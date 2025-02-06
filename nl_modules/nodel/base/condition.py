from nl_modules.nodel.base.dep_node import DepNode


class Condition(DepNode):
    """Condition Node Class, used by Attribute
    e.g.
        n = Condition("cdn__#")
        n = Condition("cdn__#", obj1.a.tx, obj2.a.tx, 1)
    """

    def __init__(self, node, operand1=0, operand2=0, opr=0):
        DepNode.__init__(self, node, "condition")
        operand1 >> self.a.firstTerm
        operand2 >> self.a.secondTerm
        self.a.operation.set(opr)

    def setCdn(self, ifTrue=0, ifFalse=1, n=None):
        """Set and return output for the condition node
        e.g.
            (obj1.a.sx != obj2.a.sx).setCdn(ifTrue=3, ifFalse=10)
            (obj1.a.sx != obj2.a.sx).setCdn(ifTrue=(1,2,3), ifFalse=(5,6,7))
            (obj1.a.sx <  obj2.a.sx).setCdn(ifTrue=obj3.a.sx, ifFalse=obj4.a.sx)
            (obj1.a.sx <  obj2.a.sx).setCdn(ifTrue=obj3.a.t, ifFalse=obj4.a.t)
            (obj1.a.sx >  obj2.a.sx).setCdn(ifTrue=1, ifFalse=0) >> obj3.a.sz
        """
        if n:
            self.rename(n)
            
        is1D = (isinstance(ifTrue, (int,float)) or not ifTrue.isVector()) and (isinstance(ifFalse, (int,float)) or not ifFalse.isVector())

        if is1D:
            ifTrue >> self.a.colorIfTrueR
            ifFalse >> self.a.colorIfFalseR
            return self.a.outColorR
        else:
            ifTrue >> self.a.colorIfTrue
            ifFalse >> self.a.colorIfFalse
            return self.a.outColor

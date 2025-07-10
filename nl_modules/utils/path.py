def genReprStr(cls, name):
    """Generate representation string
    e.g.
        "depNode('sphere_GEO')"
    """

    return f"{cls}('{objectName(name)}')"


def objectName(name):
    """Return object name
    e.g.
        '|a|b|ns:c'  # 'ns:c'
    """

    if name:
        return name.split("|")[-1]
    return name


def nameSpace(name):
    """Return object namespace
    e.g.
        '|a|b|ns:c'  # 'ns'
    """

    if name:
        if name.find(":") == -1:
            return None
        return name.split("|")[-1].rsplit(":", 1)[0]
    return name


def baseName(name):
    """Return object basename
    e.g.
        '|a|b|ns:c'  # 'c'
    """

    if name:
        return name.split("|")[-1].split(":")[-1]
    return name

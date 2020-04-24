#! /usr/bin/env python3

import coolname


def get_name(style):
    import vim
    vim.vars['gimmecase_generated_variable'] = _get_name(style)


def _get_name(style):
    if style == 'snakecase':
        return get_snake_name()
    elif style == 'camelcase':
        return get_camel_name()
    elif style == 'mixedcase':
        return get_mixed_name()


def get_snake_name():
    items = _generate()
    return '_'.join(items)
    

def get_camel_name():
    items = _generate()
    items = [items[0]] + [e.capitalize() for e in items[1:]]
    return ''.join(items)


def get_mixed_name():
    items = _generate()
    items = [e.capitalize() for e in items]
    return ''.join(items)


def _generate():
    return coolname.generate(2)

if __name__ == "__main__":
    print('snake', get_snake_name())
    print('camel', get_camel_name())
    print('mixed', get_mixed_name())
    print('mixed', _get_name('mixedcase'))

#!/usr/bin/env python3

import random
import string


def generate_password(length=12):
    characters = string.ascii_letters + string.digits + string.punctuation
    password = ''.join(random.choice(characters) for i in range(length))
    return password


if __name__ == "__main__":
    import argparse

    parser = argparse.ArgumentParser(description='Generate a secure random password.')
    parser.add_argument('-l', '--length', type=int, default=12, help='Length of the password')
    args = parser.parse_args()

    print(generate_password(args.length))

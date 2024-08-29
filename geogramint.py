# v1.4
import os
import shutil
from CLI import geogramint_cli


def main():
    # Clean up any existing cache directories
    shutil.rmtree("cache_telegram", ignore_errors=True)
    shutil.rmtree("cache", ignore_errors=True)

    # Run the CLI application
    geogramint_cli.CLI()

    # Final cleanup
    shutil.rmtree("cache", ignore_errors=True)
    if os.path.exists("geckodriver.log"):
        os.remove("geckodriver.log")

    print()


if __name__ == "__main__":
    main()

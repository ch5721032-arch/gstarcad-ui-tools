# ui-backup.py - Back up CAD profile and customization files
# Usage: python ui-backup.py [backup-folder]
import os, shutil, sys

def main():
    dest = sys.argv[1] if len(sys.argv) > 1 else "ui-backup"
    os.makedirs(dest, exist_ok=True)
    candidates = []
    for key in ("APPDATA", "LOCALAPPDATA", "USERPROFILE"):
        base = os.environ.get(key)
        if base:
            candidates += [
                os.path.join(base, "GstarCAD"),
                os.path.join(base, "AppData", "Roaming", "GstarCAD"),
                os.path.join(base, "AppData", "Local", "GstarCAD"),
            ]
    copied = 0
    for src in candidates:
        if os.path.isdir(src):
            name = "ui-" + os.path.basename(src)
            try:
                shutil.copytree(src, os.path.join(dest, name), dirs_exist_ok=True)
                copied += 1
            except Exception:
                pass
    print("Backed up %d GstarCAD profile folder(s) to %s" % (copied, dest))

if __name__ == "__main__":
    main()

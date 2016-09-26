import feather
from os.path import dirname, join, realpath
from tempfile import mkstemp
from subprocess import check_output

R_COMMAND = 'Rscript'
DIR_PATH = dirname(realpath(__file__))
PATH_TO_R = join(DIR_PATH, "implementation_R")


def check_data(df):
    tmpfile = mkstemp()
    feather.write_dataframe(df, tmpfile[1])
    path2script = join(PATH_TO_R, "check_data.R")
    return check_output([R_COMMAND, path2script, tmpfile[1]], universal_newlines=True)


def who_value_score():
    path2script = join(PATH_TO_R, "who_value_score.R")
    return check_output([R_COMMAND, path2script], universal_newlines=True)


if __name__ == '__main__':
    x = who_value_score()
    print('The score is:', x)

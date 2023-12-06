//Таблицы

#ifndef TESTMYSQLH
#define TESTMYSQLH

#include<stdio.h>
#ifdef WIN32
#include<winsock2.h>
#include<Commctrl.h>
#include<Strsafe.h>
//#include<winuser.h>
#include<mysql.h>
#define socklen_t int
#endif
#include<time.h>

#ifdef LINUX
#include<ctype.h>
#include<netdb.h>
#include<stdlib.h>
#include<memory.h>
#include<unistd.h>
#include<pthread.h>
#include<arpa/inet.h>
#include<sys/types.h>
#include<sys/socket.h>
#include<mysql/mysql.h>
#define SOCKET int
#define strcat_s(a,b,c) strncat(a,c,b)
#define strcpy_s(a,b,c) strncpy(a,c,b)
#define sscanf_s(a,b,c,d) sscanf(a,b,c)
#define strtok_s(a,b,c) strtok(a,b)
#define sprintf_s snprintf
#define Sleep(a) usleep(a*1000)
#define WORD unsigned short
#define DWORD unsigned int
#define closesocket close
#define LPVOID void*
extern int h_errno;
#endif

#ifdef WIN32
//#include"resource.h"
#pragma comment(lib, "mysqlclient.lib")
#endif

#ifdef WIN32
#pragma comment(lib, "ws2_32.lib")
#pragma comment(lib, "mysqlclient.lib")
#else
#define TRUE 1
#define FALSE 0
#endif

#define MAX_HEAD_SIZE 40960
#define MAX_CMD_SIZE 40960
#define MAX_BUFF_SIZE 81920
#define TAB_BUFF_UP 128
#define MAX_COLUMNS_IN_TABLE 256
#define MAX_VALUES_IN_SELECT 256

struct id_value_data_struct;
struct table_column;
struct select_values;

struct id_value_data_struct {
	int id;
	char *name;
	char *value;
	int index;
};

struct table_column {
	int id;
	int tab_id;
	char *name;
	int type;
	char *html_code;
	char *html_hat;
	char *col_hat;
	int col_size;
	int num;
	int sort;
	int desc;
	int col_desc_id;
	struct select_values *selects;
	struct select_values *dynamic;
};

struct select_values {
	int count;
	int tab_index; //для формирования динамических списков полей таблиц (по-сути это id таблицы)
	char *values[MAX_VALUES_IN_SELECT];
	char *selects[MAX_VALUES_IN_SELECT];
	struct select_values *svnext; //следующий список
};

void mysql_error_thread_exit(MYSQL * const, SOCKET * const ns);
void error_thread_exit(MYSQL * const, SOCKET * const, char const * const);
char *get_head_value(char * const, char const * const);
int get_some_value(char * const, char const * const, char * const);
int get_id_value(char * const, struct id_value_data_struct * const);
void run_commands(char * const, MYSQL * const, SOCKET * const);
char *make_lt_gt(char const * const);
char *make_style(char const * const);
void cp_to_utf8(char *out_text, const char *str, int from_cp, size_t buf_size);
void utf8_to_cp(char *out_text, const char *str, int to_cp, size_t buf_size);

void create_new_table(MYSQL * const, SOCKET * const);
void delete_table(char const * const, MYSQL * const, SOCKET * const);

#ifdef WIN32
DWORD WINAPI
#else
void *
#endif
ProcessingThread(void *lpParams);

#endif

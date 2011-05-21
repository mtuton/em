.class public Lcom/android/exchange/utility/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/android/exchange/utility/FileLogger;

.field public static LOG_FILE_NAME:Ljava/lang/String;

.field private static sLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 30
    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 50
    :try_start_1
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :cond_0
    monitor-exit v0

    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lcom/android/exchange/utility/FileLogger;
    .locals 2
    .parameter "c"

    .prologue
    .line 35
    const-class v0, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v1}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v1, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 36
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized log(Ljava/lang/Exception;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 59
    const-class v1, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-eqz v2, :cond_0

    .line 60
    const-string v2, "Exception"

    const-string v3, "Stack trace follows..."

    invoke-static {v2, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v2, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 62
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0           #pw:Ljava/io/PrintWriter;
    :cond_0
    monitor-exit v1

    return-void

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "str"

    .prologue
    .line 77
    const-class v0, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit v0

    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized log(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .parameter "prefix"
    .parameter "str"
    .parameter "forceFlush"

    .prologue
    const/16 v12, 0xa

    .line 84
    const-class v8, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    if-nez v9, :cond_0

    .line 85
    new-instance v9, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v9}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v9, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 87
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 88
    .local v1, d1:Ljava/util/Date;
    const-string v9, "Logger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\r\n\r\n --- New Log --- Date:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MM/dd/yy"

    invoke-static {v11, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1           #d1:Ljava/util/Date;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 91
    .local v0, d:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    .line 92
    .local v3, hr:I
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v4

    .line 93
    .local v4, min:I
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v7

    .line 96
    .local v7, sec:I
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v9, 0x100

    invoke-direct {v6, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v6, sb:Ljava/lang/StringBuffer;
    const/16 v9, 0x5b

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const/16 v9, 0x3a

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    if-ge v4, v12, :cond_1

    .line 101
    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    :cond_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const/16 v9, 0x3a

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    if-ge v7, v12, :cond_2

    .line 105
    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    const-string v9, "] "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v9, "| "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    :cond_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    const-string v9, "\r\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, s:Ljava/lang/String;
    sget-object v9, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_4

    .line 119
    :try_start_1
    sget-object v9, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v9, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 120
    if-eqz p2, :cond_4

    .line 121
    sget-object v9, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v9}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    :cond_4
    :goto_0
    monitor-exit v8

    return-void

    .line 122
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 124
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    const-string v9, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 126
    new-instance v9, Lcom/android/exchange/utility/FileLogger;

    invoke-direct {v9}, Lcom/android/exchange/utility/FileLogger;-><init>()V

    sput-object v9, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    .line 127
    sget-object v9, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_4

    .line 129
    :try_start_3
    const-string v9, "FileLogger"

    const-string v10, "Exception writing log; recreating..."

    invoke-static {v9, v10}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 131
    :catch_1
    move-exception v9

    goto :goto_0

    .line 84
    .end local v0           #d:Ljava/util/Date;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #hr:I
    .end local v4           #min:I
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #sec:I
    :catchall_0
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method public static declared-synchronized restoreLog()V
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/android/exchange/utility/FileLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/exchange/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    if-nez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/utility/FileLogger;->LOGGER:Lcom/android/exchange/utility/FileLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit v0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

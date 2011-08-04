.class Lcom/android/email/provider/EmailProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 979
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 980
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 981
    const-string v0, "EmailProvider"

    const-string v1, "In the Constructor of DatabaseHelper DATABASE_VERSION -- 100"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method private addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "col_name"
    .parameter "col_type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " add column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, tmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alter table Message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alter table Message_Updates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alter table Message_Deletes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1014
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 986
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 989
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 990
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 991
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 992
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 994
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 998
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1000
    const-string v0, "BADGE"

    const-string v1, "test\tBadge IN onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1005
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1318
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v7, 0x5

    const-string v9, "BADGE"

    const-string v6, "text"

    const-string v6, "integer default 0"

    const-string v8, "EmailProvider"

    .line 1021
    const-string v6, "BADGE"

    const-string v6, "test\tBadge IN onUpgrade"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-ge p2, v7, :cond_2

    .line 1023
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1025
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 1026
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v8}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1025
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1028
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1029
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1030
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1031
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1032
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1034
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1314
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 1039
    :cond_2
    if-ne p2, v7, :cond_3

    .line 1042
    :try_start_0
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1044
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    :goto_2
    const/4 p2, 0x6

    .line 1059
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 1061
    :try_start_1
    const-string v6, "alter table Account add column policyKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    :goto_3
    const/4 p2, 0x7

    .line 1070
    :cond_4
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5

    .line 1072
    :try_start_2
    const-string v6, "alter table Account add column displayMode integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1077
    :goto_4
    const/16 p2, 0x8

    .line 1081
    :cond_5
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6

    .line 1083
    :try_start_3
    const-string v6, "alter table Account add column calendarSyncLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1088
    :goto_5
    const/16 p2, 0x9

    .line 1091
    :cond_6
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 1093
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1094
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1095
    const/16 p2, 0xa

    .line 1099
    :cond_7
    const/16 v6, 0xa

    if-ne p2, v6, :cond_8

    .line 1102
    :try_start_4
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1108
    :goto_6
    const/16 p2, 0xb

    .line 1111
    :cond_8
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9

    .line 1114
    :try_start_5
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1116
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1122
    :goto_7
    const/16 p2, 0xc

    .line 1125
    :cond_9
    const/16 v6, 0xc

    if-ne p2, v6, :cond_a

    .line 1128
    :try_start_6
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1138
    :goto_8
    const/16 p2, 0xd

    .line 1141
    :cond_a
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b

    .line 1144
    :try_start_7
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1146
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1152
    :goto_9
    const/16 p2, 0xe

    .line 1155
    :cond_b
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c

    .line 1158
    :try_start_8
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1164
    :goto_a
    const/16 p2, 0xf

    .line 1167
    :cond_c
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d

    .line 1169
    :try_start_9
    const-string v6, "alter table Account add column textSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1174
    :goto_b
    const/16 p2, 0x10

    .line 1177
    :cond_d
    const/16 v6, 0x10

    if-ne p2, v6, :cond_e

    .line 1178
    const-string v6, "BADGE"

    const-string v6, "Upgrade\tBadge IN"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/email/provider/EmailProvider;->FIRST_ENTER:Z

    .line 1180
    const-string v6, "BADGE"

    const-string v6, "Upgrade\tBadge OUT"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :try_start_a
    const-string v6, "alter table Message add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1185
    const-string v6, "alter table Message_Updates add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1187
    const-string v6, "alter table Message_Deletes add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 1192
    :goto_c
    const/16 p2, 0x11

    .line 1195
    :cond_e
    const/16 v6, 0x11

    if-ne p2, v6, :cond_f

    .line 1199
    :try_start_b
    const-string v6, "importance"

    const-string v7, "integer default 1"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v6, "flagMoved"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v6, "dstMailboxKey"

    const-string v7, "integer default -1"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v6, "flagStatus"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v6, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1207
    const-string v6, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1209
    const-string v6, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1215
    const-string v6, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1217
    const-string v6, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1219
    const-string v6, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    const-string v6, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1223
    const-string v6, "alter table Account add column offPeakSchedule integer default -1;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1225
    const-string v6, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1235
    const-string v6, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1242
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v6, p1}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1245
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 1250
    :goto_d
    const/16 p2, 0x12

    .line 1255
    :cond_f
    const/16 v6, 0x64

    if-ge p2, v6, :cond_1

    .line 1258
    :try_start_c
    const-string v6, "isMimeLoaded"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 1264
    :goto_e
    :try_start_d
    const-string v6, "EmailProvider"

    const-string v7, "start upgrading EmailProvider.db from v18 to v19"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string v6, "smimeFlags"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v6, "encryptionAlgorithm"

    const-string v7, "text"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v6, "lastVerb"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v6, "lastVerbTime"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v6, "umCallerId"

    const-string v7, "text"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v6, "umUserNotes"

    const-string v7, "text"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v6, "conversationId"

    const-string v7, "text"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    const-string v6, "conversationIndex"

    const-string v7, "blob"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v6, "followupflag"

    const-string v7, "blob"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v6, "messageType"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v6, "messageDirty"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v6, "alter table Account add column smimeOwnCertificateAlias text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1281
    const-string v6, "alter table Account add column smimeOptionsFlags integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1284
    const-string v6, "alter table Account add column smimeSignAlgorithm integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1287
    const-string v6, "alter table Account add column smimeEncryptionAlgorithm integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    const-string v6, "alter table Account add column conversationMode integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1293
    const-string v6, "alter table Account add column textPreview integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    const-string v6, "alter table Attachment add column vmAttOrder integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    const-string v6, "alter table Attachment add column vmAttDuration integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createCertificateCacheTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1303
    const-string v6, "alter table Account add column deviceInfoSent integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1305
    const-string v6, "alter table Account add column deviceBlockedType integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 1312
    :goto_f
    const/16 p2, 0x64

    goto/16 :goto_1

    .line 1048
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 1050
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1063
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 1064
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v6 to v7"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1074
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 1075
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v7 to v8"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1085
    .end local v3           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 1086
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v8 to v9"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1104
    .end local v3           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v6

    move-object v3, v6

    .line 1106
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1118
    .end local v3           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v6

    move-object v3, v6

    .line 1120
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1134
    .end local v3           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v6

    move-object v3, v6

    .line 1136
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1148
    .end local v3           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v6

    move-object v3, v6

    .line 1150
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1160
    .end local v3           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v6

    move-object v3, v6

    .line 1162
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1171
    .end local v3           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v6

    move-object v3, v6

    .line 1172
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v15 to v16"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1189
    .end local v3           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v6

    move-object v3, v6

    .line 1190
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v16 to v17"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1246
    .end local v3           #e:Landroid/database/SQLException;
    :catch_b
    move-exception v6

    move-object v3, v6

    .line 1248
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception upgrading EmailProvider.db from v17 to v18"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1259
    .end local v3           #e:Landroid/database/SQLException;
    :catch_c
    move-exception v6

    move-object v3, v6

    .line 1260
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Maybe this field is already added at previous DB version. "

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 1308
    .end local v3           #e:Landroid/database/SQLException;
    :catch_d
    move-exception v6

    move-object v3, v6

    .line 1309
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v18 to v19"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f
.end method

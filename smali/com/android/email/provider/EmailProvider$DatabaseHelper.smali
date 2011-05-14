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
    .line 885
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    .line 886
    const/4 v0, 0x0

    const/16 v1, 0x13

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 887
    iput-object p2, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 888
    const-string v0, "EmailProvider"

    const-string v1, "In the Constructor of DatabaseHelper DATABASE_VERSION -- 19"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
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
    .line 912
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

    .line 914
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

    .line 915
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

    .line 916
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

    .line 917
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 893
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 896
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 897
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 898
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 899
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 901
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 905
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 907
    const-string v0, "BADGE"

    const-string v1, "test\tBadge IN onUpgrade"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1171
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x5

    const-string v6, "integer default 0"

    const-string v9, "BADGE"

    const-string v8, "EmailProvider"

    .line 924
    const-string v6, "BADGE"

    const-string v6, "test\tBadge IN onUpgrade"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-ge p2, v7, :cond_2

    .line 926
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 928
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

    .line 929
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v0, v10, v10}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 928
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 931
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 932
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 933
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 934
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 935
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 937
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/EmailProvider;->resetPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1167
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 942
    :cond_2
    if-ne p2, v7, :cond_3

    .line 945
    :try_start_0
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 947
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 949
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    :goto_2
    const/4 p2, 0x6

    .line 962
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 964
    :try_start_1
    const-string v6, "alter table Account add column policyKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    :goto_3
    const/4 p2, 0x7

    .line 973
    :cond_4
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5

    .line 975
    :try_start_2
    const-string v6, "alter table Account add column displayMode integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 980
    :goto_4
    const/16 p2, 0x8

    .line 984
    :cond_5
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6

    .line 986
    :try_start_3
    const-string v6, "alter table Account add column calendarSyncLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 991
    :goto_5
    const/16 p2, 0x9

    .line 994
    :cond_6
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 996
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 997
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 998
    const/16 p2, 0xa

    .line 1002
    :cond_7
    const/16 v6, 0xa

    if-ne p2, v6, :cond_8

    .line 1005
    :try_start_4
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1011
    :goto_6
    const/16 p2, 0xb

    .line 1014
    :cond_8
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9

    .line 1017
    :try_start_5
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1019
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1025
    :goto_7
    const/16 p2, 0xc

    .line 1028
    :cond_9
    const/16 v6, 0xc

    if-ne p2, v6, :cond_a

    .line 1031
    :try_start_6
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1033
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1035
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1041
    :goto_8
    const/16 p2, 0xd

    .line 1044
    :cond_a
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b

    .line 1047
    :try_start_7
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1049
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1055
    :goto_9
    const/16 p2, 0xe

    .line 1058
    :cond_b
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c

    .line 1061
    :try_start_8
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1067
    :goto_a
    const/16 p2, 0xf

    .line 1070
    :cond_c
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d

    .line 1072
    :try_start_9
    const-string v6, "alter table Account add column textSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1077
    :goto_b
    const/16 p2, 0x10

    .line 1080
    :cond_d
    const/16 v6, 0x10

    if-ne p2, v6, :cond_e

    .line 1081
    const-string v6, "BADGE"

    const-string v6, "Upgrade\tBadge IN"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/email/provider/EmailProvider;->FIRST_ENTER:Z

    .line 1083
    const-string v6, "BADGE"

    const-string v6, "Upgrade\tBadge OUT"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :try_start_a
    const-string v6, "alter table Message add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1088
    const-string v6, "alter table Message_Updates add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v6, "alter table Message_Deletes add column threadName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 1095
    :goto_c
    const/16 p2, 0x11

    .line 1098
    :cond_e
    const/16 v6, 0x11

    if-ne p2, v6, :cond_f

    .line 1103
    :try_start_b
    const-string v6, "importance"

    const-string v7, "integer default 1"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v6, "flagMoved"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v6, "dstMailboxKey"

    const-string v7, "integer default -1"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const-string v6, "flagStatus"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v6, "alter table Mailbox add column flagChanged integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1111
    const-string v6, "alter table Mailbox add column dstMailboxId text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1113
    const-string v6, "alter table Mailbox add column newDisplayName text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v6, "alter table Account add column peakDays integer default 62;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1121
    const-string v6, "alter table Account add column peakStartMinute integer default 480;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1123
    const-string v6, "alter table Account add column peakEndMinute integer default 1020;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v6, "alter table Account add column peakSchedule integer default -2;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v6, "alter table Account add column offPeakSchedule integer default -1;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v6, "alter table Account add column roamingSchedule integer default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1139
    const-string v6, "create trigger account_delete_policy before delete on Account begin delete from Policies where account_id=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1145
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createFollowupFlagsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1146
    iget-object v6, p0, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {v6, p1}, Lcom/android/email/provider/EmailProvider;->access$000(Lcom/android/email/provider/EmailProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1149
    invoke-static {p1}, Lcom/android/email/provider/EmailProvider;->createPoliciesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 1154
    :goto_d
    const/16 p2, 0x12

    .line 1157
    :cond_f
    const/16 v6, 0x12

    if-ne p2, v6, :cond_1

    .line 1160
    :try_start_c
    const-string v6, "isMimeLoaded"

    const-string v7, "integer default 0"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/email/provider/EmailProvider$DatabaseHelper;->addColumnToMsgTables(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 1165
    :goto_e
    const/16 p2, 0x13

    goto/16 :goto_1

    .line 951
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 953
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 966
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 967
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v6 to v7"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 977
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v6

    move-object v3, v6

    .line 978
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v7 to v8"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 988
    .end local v3           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 989
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v8 to v9"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1007
    .end local v3           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v6

    move-object v3, v6

    .line 1009
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

    .line 1021
    .end local v3           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v6

    move-object v3, v6

    .line 1023
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

    .line 1037
    .end local v3           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v6

    move-object v3, v6

    .line 1039
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

    .line 1051
    .end local v3           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v6

    move-object v3, v6

    .line 1053
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

    .line 1063
    .end local v3           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v6

    move-object v3, v6

    .line 1065
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

    .line 1074
    .end local v3           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v6

    move-object v3, v6

    .line 1075
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v15 to v16"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 1092
    .end local v3           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v6

    move-object v3, v6

    .line 1093
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v16 to v17"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 1150
    .end local v3           #e:Landroid/database/SQLException;
    :catch_b
    move-exception v6

    move-object v3, v6

    .line 1152
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

    .line 1162
    .end local v3           #e:Landroid/database/SQLException;
    :catch_c
    move-exception v6

    move-object v3, v6

    .line 1163
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v6, "Exception upgrading EmailProvider.db from v18 to v19"

    invoke-static {v8, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e
.end method

.class Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field flag:Ljava/lang/Boolean;

.field flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

.field id:J

.field read:Ljava/lang/Boolean;

.field final synthetic this$1:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/email/provider/EmailContent$FollowupFlag;)V
    .locals 0
    .parameter
    .parameter "_id"
    .parameter "_read"
    .parameter "_flag"
    .parameter "ff"

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->this$1:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-wide p2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    .line 912
    iput-object p4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    .line 913
    iput-object p5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    .line 914
    iput-object p6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 915
    return-void
.end method

.class Lcom/android/email/activity/MessageList$MessageData;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageData"
.end annotation


# instance fields
.field accountKey:S

.field convId:Ljava/lang/String;

.field convThreadId:I

.field displayName:Ljava/lang/String;

.field flagAttachment:S

.field flagFavorite:S

.field flagRead:S

.field flagReadConv:I

.field followUpFlag:I

.field followflagComConv:I

.field followflagSetConv:I

.field importance:I

.field lastVerb:I

.field mailBoxKey:S

.field messageType:I

.field recordID:I

.field smimeFlags:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field threadSubject:Ljava/lang/String;

.field timeStamp:J

.field toList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 9520
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageData;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

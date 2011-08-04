.class Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList$MoveMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TempList"
.end annotation


# instance fields
.field account:J

.field id:J

.field final synthetic this$1:Lcom/android/email/activity/MessageList$MoveMessageTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList$MoveMessageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 7000
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MoveMessageTask$1TempList;->this$1:Lcom/android/email/activity/MessageList$MoveMessageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

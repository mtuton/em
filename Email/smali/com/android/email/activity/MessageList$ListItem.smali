.class public Lcom/android/email/activity/MessageList$ListItem;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field rPos:I

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;I)V
    .locals 0
    .parameter
    .parameter "rPos"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ListItem;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p2, p0, Lcom/android/email/activity/MessageList$ListItem;->rPos:I

    .line 457
    return-void
.end method

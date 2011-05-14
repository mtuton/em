.class Lcom/android/email/activity/MessageView$ReceiverViewType;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiverViewType"
.end annotation


# instance fields
.field private _group:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "group"
    .parameter "name"

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/email/activity/MessageView$ReceiverViewType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1983
    iput-object p2, p0, Lcom/android/email/activity/MessageView$ReceiverViewType;->_group:Ljava/lang/String;

    .line 1984
    iput-object p3, p0, Lcom/android/email/activity/MessageView$ReceiverViewType;->_name:Ljava/lang/String;

    .line 1985
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1992
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ReceiverViewType;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/email/activity/MessageView$ReceiverViewType;->_group:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/android/email/activity/MessageList$TextSizeType;
.super Ljava/lang/Object;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextSizeType"
.end annotation


# instance fields
.field private _name:Ljava/lang/String;

.field private _sampleSize:I

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "size"

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/android/email/activity/MessageList$TextSizeType;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    iput-object p2, p0, Lcom/android/email/activity/MessageList$TextSizeType;->_name:Ljava/lang/String;

    .line 1892
    iput p3, p0, Lcom/android/email/activity/MessageList$TextSizeType;->_sampleSize:I

    .line 1893
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/email/activity/MessageList$TextSizeType;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1898
    iget v0, p0, Lcom/android/email/activity/MessageList$TextSizeType;->_sampleSize:I

    return v0
.end method

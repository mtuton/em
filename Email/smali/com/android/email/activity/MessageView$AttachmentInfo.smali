.class Lcom/android/email/activity/MessageView$AttachmentInfo;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentInfo"
.end annotation


# instance fields
.field public attachmentId:J

.field public contentType:Ljava/lang/String;

.field public downloadButton:Landroid/widget/Button;

.field public iconView:Landroid/widget/ImageView;

.field public name:Ljava/lang/String;

.field public size:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/email/activity/MessageView$AttachmentInfo;-><init>()V

    return-void
.end method

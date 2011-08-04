.class Lcom/android/email/activity/MessageView$BodyImageInfo;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BodyImageInfo"
.end annotation


# instance fields
.field public mContentUri:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/android/email/activity/MessageView$BodyImageInfo;-><init>()V

    return-void
.end method

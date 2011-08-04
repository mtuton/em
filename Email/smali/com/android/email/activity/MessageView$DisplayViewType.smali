.class Lcom/android/email/activity/MessageView$DisplayViewType;
.super Ljava/lang/Object;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayViewType"
.end annotation


# instance fields
.field private _img:Landroid/graphics/drawable/Drawable;

.field private _name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "img"

    .prologue
    .line 4574
    iput-object p1, p0, Lcom/android/email/activity/MessageView$DisplayViewType;->this$0:Lcom/android/email/activity/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4575
    iput-object p2, p0, Lcom/android/email/activity/MessageView$DisplayViewType;->_name:Ljava/lang/String;

    .line 4576
    iput-object p3, p0, Lcom/android/email/activity/MessageView$DisplayViewType;->_img:Landroid/graphics/drawable/Drawable;

    .line 4577
    return-void
.end method


# virtual methods
.method public getImg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/android/email/activity/MessageView$DisplayViewType;->_img:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4580
    iget-object v0, p0, Lcom/android/email/activity/MessageView$DisplayViewType;->_name:Ljava/lang/String;

    return-object v0
.end method

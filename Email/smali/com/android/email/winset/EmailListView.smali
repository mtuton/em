.class public Lcom/android/email/winset/EmailListView;
.super Landroid/widget/ListView;
.source "EmailListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;
    }
.end annotation


# instance fields
.field protected mExcessScrollRecoverRunnable:Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    invoke-direct {v0, p0}, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;-><init>(Lcom/android/email/winset/EmailListView;)V

    iput-object v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScrollRecoverRunnable:Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    invoke-direct {v0, p0}, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;-><init>(Lcom/android/email/winset/EmailListView;)V

    iput-object v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScrollRecoverRunnable:Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    invoke-direct {v0, p0}, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;-><init>(Lcom/android/email/winset/EmailListView;)V

    iput-object v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScrollRecoverRunnable:Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/winset/EmailListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScroll:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/winset/EmailListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScroll:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/winset/EmailListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScroll:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/winset/EmailListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/email/winset/EmailListView;->mExcessScroll:I

    return p1
.end method


# virtual methods
.method public recoverExcessScroll()V
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScroll:I

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/email/winset/EmailListView;->mExcessScrollRecoverRunnable:Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;

    invoke-virtual {v0}, Lcom/android/email/winset/EmailListView$ExcessScrollRecoverRunnable;->start()V

    .line 51
    :cond_0
    return-void
.end method

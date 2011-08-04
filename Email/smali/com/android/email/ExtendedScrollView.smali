.class public Lcom/android/email/ExtendedScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendedScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 28
    .local v4, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 29
    .local v1, action:I
    invoke-virtual {p0}, Lcom/android/email/ExtendedScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, focusedChild:Landroid/view/View;
    instance-of v5, v2, Landroid/webkit/HtmlComposerView;

    if-eqz v5, :cond_2

    .line 32
    move-object v0, v2

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object v3, v0

    .line 33
    .local v3, htv:Landroid/webkit/HtmlComposerView;
    iget-boolean v5, v3, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isMagnifierVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extended Scroll View onInterceptTouchEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    .end local v3           #htv:Landroid/webkit/HtmlComposerView;
    :cond_2
    return v4
.end method

.class Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 848
    return-void
.end method

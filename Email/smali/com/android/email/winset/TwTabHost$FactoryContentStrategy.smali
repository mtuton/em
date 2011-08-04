.class Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "TwTabHost.java"

# interfaces
.implements Lcom/android/email/winset/TwTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Lcom/android/email/winset/TwTabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mFactory:Lcom/android/email/winset/TwTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/winset/TwTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 901
    return-void
.end method

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

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# direct methods
.method public constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Lcom/android/email/winset/TwTabHost$TabContentFactory;)V
    .locals 0
    .parameter
    .parameter "tag"
    .parameter "factory"

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p2, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 804
    iput-object p3, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mFactory:Lcom/android/email/winset/TwTabHost$TabContentFactory;

    .line 805
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mFactory:Lcom/android/email/winset/TwTabHost$TabContentFactory;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/winset/TwTabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    return-void
.end method

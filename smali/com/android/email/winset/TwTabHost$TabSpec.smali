.class public Lcom/android/email/winset/TwTabHost$TabSpec;
.super Ljava/lang/Object;
.source "TwTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/winset/TwTabHost;


# direct methods
.method private constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 551
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;Lcom/android/email/winset/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/android/email/winset/TwTabHost$TabSpec;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method getIndicator()Lcom/android/email/winset/TwTabHost$IndicatorStrategy;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 587
    new-instance v0, Lcom/android/email/winset/TwTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/email/winset/TwTabHost$ViewIdContentStrategy;-><init>(Lcom/android/email/winset/TwTabHost;ILcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    .line 588
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 604
    new-instance v0, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/email/winset/TwTabHost$IntentContentStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    .line 605
    return-object p0
.end method

.method public setContent(Lcom/android/email/winset/TwTabHost$TabContentFactory;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "contentFactory"

    .prologue
    .line 596
    new-instance v0, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Lcom/android/email/winset/TwTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    .line 597
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "view"

    .prologue
    .line 578
    new-instance v0, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Landroid/view/View;Lcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    .line 579
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 562
    new-instance v0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Lcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    .line 563
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 570
    new-instance v0, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    .line 571
    return-object p0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    invoke-interface {v0, p1}, Lcom/android/email/winset/TwTabHost$IndicatorStrategy;->setLabelText(Ljava/lang/String;)V

    .line 621
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 625
    return-void
.end method

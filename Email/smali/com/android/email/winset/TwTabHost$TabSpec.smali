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
    .line 633
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    iput-object p2, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;Lcom/android/email/winset/TwTabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 626
    invoke-direct {p0, p1, p2}, Lcom/android/email/winset/TwTabHost$TabSpec;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "viewId"

    .prologue
    .line 671
    new-instance v0, Lcom/android/email/winset/TwTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/email/winset/TwTabHost$ViewIdContentStrategy;-><init>(Lcom/android/email/winset/TwTabHost;ILcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mContentStrategy:Lcom/android/email/winset/TwTabHost$ContentStrategy;

    .line 672
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 3
    .parameter "label"

    .prologue
    .line 646
    new-instance v0, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->this$0:Lcom/android/email/winset/TwTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/CharSequence;Lcom/android/email/winset/TwTabHost$1;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    .line 647
    return-object p0
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost$TabSpec;->mIndicatorStrategy:Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    invoke-interface {v0, p1}, Lcom/android/email/winset/TwTabHost$IndicatorStrategy;->setLabelText(Ljava/lang/String;)V

    .line 705
    :cond_0
    return-void
.end method

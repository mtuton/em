.class public Lcom/android/email/winset/TwTabHost;
.super Landroid/widget/FrameLayout;
.source "TwTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/TwTabHost$IntentContentStrategy;,
        Lcom/android/email/winset/TwTabHost$FactoryContentStrategy;,
        Lcom/android/email/winset/TwTabHost$ViewIdContentStrategy;,
        Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;,
        Lcom/android/email/winset/TwTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/android/email/winset/TwTabHost$LabelIndicatorStrategy;,
        Lcom/android/email/winset/TwTabHost$ContentStrategy;,
        Lcom/android/email/winset/TwTabHost$IndicatorStrategy;,
        Lcom/android/email/winset/TwTabHost$TabSpec;,
        Lcom/android/email/winset/TwTabHost$TabContentFactory;,
        Lcom/android/email/winset/TwTabHost$OnTabChangeListener;
    }
.end annotation


# static fields
.field public static final TEXT:I = 0x0

.field public static final TEXT_AND_IMAGE:I = 0x1

.field protected static mTabIndicatorType:I


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/winset/TwTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/android/email/winset/TwTabWidget;

.field private mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    sput v0, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 63
    iput-object v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 68
    iput-object v2, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 94
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 63
    iput-object v4, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 68
    iput-object v4, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 105
    sget-object v1, Ltouchwiz/R$styleable;->TwTabHost:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    .line 107
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/winset/TwTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidgetWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setFocusableInTouchMode(Z)V

    .line 112
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setDescendantFocusability(I)V

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 115
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/winset/TwTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/email/winset/TwTabHost$TabSpec;)V
    .locals 3
    .parameter "tabSpec"

    .prologue
    .line 288
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 293
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :cond_1
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 297
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_2
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->setDrawBottomStrips(Z)V

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, v0}, Lcom/android/email/winset/TwTabWidget;->addView(Landroid/view/View;)V

    .line 308
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabWidget;->removeAllViews()V

    .line 317
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 320
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->requestLayout()V

    .line 322
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->invalidate()V

    .line 323
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 396
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 402
    .local v0, handled:Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 412
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabHost;->playSoundEffect(I)V

    .line 413
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 426
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabLists()Ljava/util/List;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getTabWidget()Lcom/android/email/winset/TwTabWidget;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 123
    new-instance v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/email/winset/TwTabHost$TabSpec;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;Lcom/android/email/winset/TwTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 250
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 251
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 254
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 259
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 260
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 263
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 433
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-ne p1, v1, :cond_2

    .line 443
    :cond_2
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_3

    .line 444
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-static {v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->tabClosed()V

    .line 447
    :cond_3
    iput p1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 448
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    .line 452
    .local v0, spec:Lcom/android/email/winset/TwTabHost$TabSpec;
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->focusCurrentTab(I)V

    .line 456
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidgetWrapper;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 457
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    new-instance v2, Lcom/android/email/winset/TwTabHost$3;

    invoke-direct {v2, p0}, Lcom/android/email/winset/TwTabHost$3;-><init>(Lcom/android/email/winset/TwTabHost;)V

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_4
    invoke-static {v0}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 467
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 468
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 469
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    :cond_5
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_6

    .line 480
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 485
    :cond_6
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 377
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    .line 383
    :cond_0
    return-void

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/android/email/winset/TwTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    .line 496
    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 138
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/winset/TwTabWidget;

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    .line 139
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    if-nez v3, :cond_0

    .line 140
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a TwTabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    new-instance v3, Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/email/winset/TwTabWidgetWrapper;-><init>(Landroid/content/Context;Lcom/android/email/winset/TwTabHost;)V

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    .line 149
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 150
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 152
    .local v1, originalIndex:I
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 153
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    iget-object v4, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3, v4}, Lcom/android/email/winset/TwTabWidgetWrapper;->addTabWidget(Lcom/android/email/winset/TwTabWidget;)V

    .line 187
    new-instance v3, Lcom/android/email/winset/TwTabHost$1;

    invoke-direct {v3, p0}, Lcom/android/email/winset/TwTabHost$1;-><init>(Lcom/android/email/winset/TwTabHost;)V

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 205
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    new-instance v4, Lcom/android/email/winset/TwTabHost$2;

    invoke-direct {v4, p0}, Lcom/android/email/winset/TwTabHost$2;-><init>(Lcom/android/email/winset/TwTabHost;)V

    invoke-virtual {v3, v4}, Lcom/android/email/winset/TwTabWidget;->setTabSelectionListener(Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;)V

    .line 214
    const v3, 0x1020011

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 215
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 216
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->setup()V

    .line 231
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 232
    return-void
.end method

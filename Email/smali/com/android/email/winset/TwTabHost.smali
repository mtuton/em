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
    .line 102
    const/4 v0, 0x1

    sput v0, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 79
    iput-object v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 84
    iput-object v2, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 110
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    .line 78
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 79
    iput-object v4, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 84
    iput-object v4, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 121
    sget-object v1, Ltouchwiz/R$styleable;->TwTabHost:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    .line 123
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 124
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/winset/TwTabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/winset/TwTabHost;)Lcom/android/email/winset/TwTabWidgetWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    return-object v0
.end method

.method private final initTabHost()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setFocusableInTouchMode(Z)V

    .line 128
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setDescendantFocusability(I)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 131
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/winset/TwTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/email/winset/TwTabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 302
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_2
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_3

    .line 311
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_3
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 318
    invoke-static {p1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$200(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/android/email/winset/TwTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_4

    .line 319
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, v3}, Lcom/android/email/winset/TwTabWidget;->setDrawBottomStrips(Z)V

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, v0}, Lcom/android/email/winset/TwTabWidget;->addView(Landroid/view/View;)V

    .line 322
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 325
    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    goto :goto_0
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabWidget;->removeAllViews()V

    .line 336
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->initTabHost()V

    .line 339
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->requestLayout()V

    .line 341
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->invalidate()V

    .line 342
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 418
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    move v1, v0

    .line 441
    :goto_0
    return v1

    .line 425
    :cond_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 435
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabHost;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    const/4 v1, 0x1

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    :cond_1
    move v1, v0

    .line 441
    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v0, p1}, Lcom/android/email/winset/TwTabWidget;->dispatchWindowFocusChanged(Z)V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 454
    :cond_1
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 368
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
    .line 376
    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTabLists()Ljava/util/List;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/android/email/winset/TwTabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 139
    new-instance v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/email/winset/TwTabHost$TabSpec;-><init>(Lcom/android/email/winset/TwTabHost;Ljava/lang/String;Lcom/android/email/winset/TwTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 268
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 269
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 277
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 278
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 287
    if-nez p1, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 295
    :cond_1
    return-void
.end method

.method public setAndRefreshCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 461
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 467
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-static {v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->tabClosed()V

    .line 470
    :cond_2
    iput p1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 471
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    .line 475
    .local v0, spec:Lcom/android/email/winset/TwTabHost$TabSpec;
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->focusAndRefreshCurrentTab(I)V

    .line 481
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidgetWrapper;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    new-instance v2, Lcom/android/email/winset/TwTabHost$3;

    invoke-direct {v2, p0}, Lcom/android/email/winset/TwTabHost$3;-><init>(Lcom/android/email/winset/TwTabHost;)V

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 491
    :cond_3
    invoke-static {v0}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 492
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 493
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 494
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    :cond_4
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 510
    :cond_5
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 518
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 528
    iget v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 529
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-static {v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->tabClosed()V

    .line 532
    :cond_2
    iput p1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    .line 533
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/winset/TwTabHost$TabSpec;

    .line 537
    .local v0, spec:Lcom/android/email/winset/TwTabHost$TabSpec;
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidget;->focusCurrentTab(I)V

    .line 540
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidgetWrapper;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 541
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    new-instance v2, Lcom/android/email/winset/TwTabHost$4;

    invoke-direct {v2, p0}, Lcom/android/email/winset/TwTabHost$4;-><init>(Lcom/android/email/winset/TwTabHost;)V

    invoke-virtual {v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 550
    :cond_3
    invoke-static {v0}, Lcom/android/email/winset/TwTabHost$TabSpec;->access$300(Lcom/android/email/winset/TwTabHost$TabSpec;)Lcom/android/email/winset/TwTabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/winset/TwTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    .line 551
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 552
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 553
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    :cond_4
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 564
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 569
    :cond_5
    invoke-direct {p0}, Lcom/android/email/winset/TwTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/email/winset/TwTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/winset/TwTabHost$TabSpec;

    invoke-virtual {v1}, Lcom/android/email/winset/TwTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabHost;->setCurrentTab(I)V

    .line 402
    :cond_0
    return-void

    .line 396
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/android/email/winset/TwTabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost;->mOnTabChangeListener:Lcom/android/email/winset/TwTabHost$OnTabChangeListener;

    .line 580
    return-void
.end method

.method public setup()V
    .locals 5

    .prologue
    .line 154
    const v3, 0x1020013

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/email/winset/TwTabWidget;

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    .line 155
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    if-nez v3, :cond_0

    .line 156
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a TwTabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_0
    new-instance v3, Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/email/winset/TwTabWidgetWrapper;-><init>(Landroid/content/Context;Lcom/android/email/winset/TwTabHost;)V

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    .line 165
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 166
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 168
    .local v1, originalIndex:I
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3}, Lcom/android/email/winset/TwTabWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidgetWrapper:Lcom/android/email/winset/TwTabWidgetWrapper;

    iget-object v4, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v3, v4}, Lcom/android/email/winset/TwTabWidgetWrapper;->addTabWidget(Lcom/android/email/winset/TwTabWidget;)V

    .line 203
    new-instance v3, Lcom/android/email/winset/TwTabHost$1;

    invoke-direct {v3, p0}, Lcom/android/email/winset/TwTabHost$1;-><init>(Lcom/android/email/winset/TwTabHost;)V

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 223
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    new-instance v4, Lcom/android/email/winset/TwTabHost$2;

    invoke-direct {v4, p0}, Lcom/android/email/winset/TwTabHost$2;-><init>(Lcom/android/email/winset/TwTabHost;)V

    invoke-virtual {v3, v4}, Lcom/android/email/winset/TwTabWidget;->setTabSelectionListener(Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;)V

    .line 232
    const v3, 0x1020011

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 233
    iget-object v3, p0, Lcom/android/email/winset/TwTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v3, :cond_1

    .line 234
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabHost;->setup()V

    .line 249
    iput-object p1, p0, Lcom/android/email/winset/TwTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 250
    return-void
.end method

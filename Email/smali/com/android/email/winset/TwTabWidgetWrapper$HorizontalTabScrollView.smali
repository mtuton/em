.class Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;
.super Landroid/widget/FrameLayout;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalTabScrollView"
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalTabScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsFlinging:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMovingRight:Z

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/email/winset/TwTabWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/android/email/winset/TwTabWidgetWrapper;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 357
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    .line 359
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 627
    iput-boolean v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 633
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 671
    iput-boolean v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 699
    iput-boolean v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 731
    iput-boolean v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 741
    iput-boolean v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMovingRight:Z

    .line 361
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->initScrollView()V

    .line 363
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 367
    invoke-virtual {p0, p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 923
    invoke-virtual {p0, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 925
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 929
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 933
    .end local v1           #childWidth:I
    :goto_0
    return v2

    .restart local v1       #childWidth:I
    :cond_0
    move v2, v5

    .line 929
    goto :goto_0

    .end local v1           #childWidth:I
    :cond_1
    move v2, v5

    .line 933
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 2967
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 2969
    :cond_0
    const/4 v0, 0x0

    .line 2979
    :goto_0
    return v0

    .line 2973
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 2975
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 2979
    goto :goto_0
.end method

.method private doScrollX(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 2177
    if-eqz p1, :cond_0

    .line 2179
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 2181
    invoke-virtual {p0, p1, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 2191
    :cond_0
    :goto_0
    return-void

    .line 2185
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private doSelectNewTab()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const-string v12, "HorizontalTabScrollView"

    .line 466
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v10}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v10

    iget v10, v10, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v9, v10}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 468
    .local v3, indicator:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 482
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v0, v9, v10

    .line 488
    .local v0, MeasureIndicatorWidth:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 490
    .local v6, rc:Landroid/graphics/Rect;
    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 496
    invoke-virtual {p0, v3, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 500
    invoke-virtual {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v7

    .line 506
    .local v7, scrollDelta:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v0, :cond_0

    .line 510
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    iget-object v10, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v10}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v10

    iget v10, v10, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v9, v10}, Lcom/android/email/winset/TwTabWidgetWrapper;->scrollToTab(I)V

    .line 601
    :goto_0
    return-void

    .line 518
    :cond_0
    const/high16 v5, -0x8000

    .line 522
    .local v5, newSelectionIndex:I
    if-lez v7, :cond_3

    .line 527
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v9

    iget v9, v9, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    sub-int v2, v9, v11

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_1

    .line 529
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 533
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 535
    invoke-virtual {p0, v8, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 537
    invoke-virtual {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 543
    .local v1, delta:I
    if-gtz v1, :cond_2

    .line 545
    add-int/lit8 v5, v2, 0x1

    .line 585
    .end local v1           #delta:I
    .end local v8           #v:Landroid/view/View;
    :cond_1
    :goto_2
    const/high16 v9, -0x8000

    if-eq v5, v9, :cond_5

    .line 587
    const-string v9, "HorizontalTabScrollView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doSelectNewTab(). new selection:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    .restart local v1       #delta:I
    .restart local v8       #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 557
    .end local v1           #delta:I
    .end local v2           #i:I
    .end local v8           #v:Landroid/view/View;
    :cond_3
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v9

    iget v9, v9, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    add-int/lit8 v2, v9, 0x1

    .restart local v2       #i:I
    :goto_3
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/winset/TwTabHost;->getTabCount()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 559
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v9}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    .line 563
    .restart local v8       #v:Landroid/view/View;
    invoke-virtual {v8, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 565
    invoke-virtual {p0, v8, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 567
    invoke-virtual {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 571
    .restart local v1       #delta:I
    if-ltz v1, :cond_4

    .line 573
    sub-int v5, v2, v11

    .line 575
    goto :goto_2

    .line 557
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 595
    .end local v1           #delta:I
    .end local v8           #v:Landroid/view/View;
    :cond_5
    const-string v9, "HorizontalTabScrollView"

    const-string v9, "doSelectNewTab(). failed to find new selection"

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1663
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1665
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1683
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1687
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1689
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 1691
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1693
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1695
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1699
    .local v9, viewRight:I
    if-ge p2, v9, :cond_0

    if-ge v8, p3, :cond_0

    .line 1711
    if-ge p2, v8, :cond_1

    if-ge v9, p3, :cond_1

    const/4 v10, 0x1

    move v7, v10

    .line 1717
    .local v7, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 1721
    move-object v1, v5

    .line 1723
    move v3, v7

    .line 1689
    .end local v7           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1711
    :cond_1
    const/4 v10, 0x0

    move v7, v10

    goto :goto_1

    .line 1727
    .restart local v7       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v6, v10

    .line 1735
    .local v6, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 1737
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 1749
    move-object v1, v5

    goto :goto_2

    .line 1727
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v6, v10

    goto :goto_3

    .line 1755
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v7, :cond_7

    .line 1759
    move-object v1, v5

    .line 1761
    const/4 v3, 0x1

    goto :goto_2

    .line 1763
    :cond_7
    if-eqz v6, :cond_0

    .line 1773
    move-object v1, v5

    goto :goto_2

    .line 1787
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1603
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 1605
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1609
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_0

    move-object v3, p3

    .line 1621
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 823
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    .line 825
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 827
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 829
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setWillNotDraw(Z)V

    .line 831
    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 833
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    .line 835
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    .line 837
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    .line 839
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 2135
    invoke-direct {p0, p1, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 2849
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 2859
    :goto_0
    return v1

    .line 2857
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2859
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .locals 3
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2153
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2157
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScrollEndDetected()V
    .locals 6

    .prologue
    .line 426
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v4}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v5}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;

    move-result-object v5

    iget v5, v5, Lcom/android/email/winset/TwTabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 432
    .local v0, indicator:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 434
    .local v2, rc:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 440
    invoke-virtual {p0, v0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 444
    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 448
    .local v3, scrollDelta:I
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 452
    .local v1, newSelectionNeeded:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->doSelectNewTab()V

    .line 458
    :cond_0
    return-void

    .line 448
    .end local v1           #newSelectionNeeded:Z
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1953
    const/4 v4, 0x1

    .line 1957
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v6

    .line 1959
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v0

    .line 1961
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1963
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_2

    move v3, v9

    .line 1967
    .local v3, goLeft:Z
    :goto_0
    invoke-direct {p0, v3, p2, p3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1969
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 1971
    move-object v5, p0

    .line 1977
    :cond_0
    if-lt p2, v0, :cond_3

    if-gt p3, v1, :cond_3

    .line 1979
    const/4 v4, 0x0

    .line 1991
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1993
    iput-boolean v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1995
    iput-boolean v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 2001
    :cond_1
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2
    move v3, v8

    .line 1963
    goto :goto_0

    .line 1983
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_4

    sub-int v7, p2, v0

    move v2, v7

    .line 1985
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_1

    .line 1983
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v1

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2437
    if-nez p1, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2449
    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2453
    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2457
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 2459
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 2485
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 2487
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 2489
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2491
    if-eqz p2, :cond_2

    .line 2493
    invoke-virtual {p0, v0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    .line 2503
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 2487
    goto :goto_0

    .line 2497
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 847
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 857
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 875
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 903
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 911
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v9, 0x0

    .line 2025
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2027
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2031
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 2035
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 2039
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2041
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2043
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2045
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 2047
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    .line 2049
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2095
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2109
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getDescendantFocusability()I

    move-result v2

    .line 2111
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->requestFocus()Z

    .line 2115
    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 2119
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 2055
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 2059
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 2061
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    .line 2083
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 2085
    goto :goto_1

    .line 2063
    :cond_4
    if-ne p1, v10, :cond_3

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 2067
    invoke-virtual {p0, v9}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2071
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v8

    add-int v5, v7, v8

    .line 2075
    .local v5, screenRight:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 2077
    sub-int v6, v1, v5

    goto :goto_2

    .line 2089
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 2269
    .local v0, count:I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2339
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2373
    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 2375
    .local v1, oldX:I
    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 2377
    .local v2, oldY:I
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 2379
    .local v3, x:I
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 2381
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 2383
    invoke-virtual {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2385
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 2387
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 2397
    .end local v0           #child:Landroid/view/View;
    :goto_0
    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq v2, v5, :cond_1

    .line 2399
    :cond_0
    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollChanged(IIII)V

    .line 2407
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->postInvalidate()V

    .line 2421
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    :goto_1
    return-void

    .line 2391
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_3
    iput v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 2393
    iput v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    goto :goto_0

    .line 2411
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_4
    iget-boolean v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    if-eqz v5, :cond_2

    .line 2413
    iput-boolean v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 2415
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_1
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 8
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 2527
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    .line 2641
    :goto_0
    return v6

    .line 2531
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    .line 2533
    .local v5, width:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v2

    .line 2535
    .local v2, screenLeft:I
    add-int v3, v2, v5

    .line 2569
    .local v3, screenRight:I
    const/4 v4, 0x0

    .line 2573
    .local v4, scrollXDelta:I
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-le v6, v3, :cond_3

    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-le v6, v2, :cond_3

    .line 2583
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 2587
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v2

    add-int/2addr v4, v6

    .line 2601
    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    .line 2603
    .local v1, right:I
    sub-int v0, v1, v3

    .line 2605
    .local v0, distanceToRight:I
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .end local v0           #distanceToRight:I
    .end local v1           #right:I
    :cond_1
    :goto_2
    move v6, v4

    .line 2641
    goto :goto_0

    .line 2593
    :cond_2
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    add-int/2addr v4, v6

    goto :goto_1

    .line 2609
    :cond_3
    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v2, :cond_1

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-ge v6, v3, :cond_1

    .line 2619
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v5, :cond_4

    .line 2623
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v6

    sub-int/2addr v4, v6

    .line 2637
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    .line 2629
    :cond_4
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v6

    sub-int/2addr v4, v6

    goto :goto_3
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1131
    .local v0, handled:Z
    if-eqz v0, :cond_0

    .line 1133
    const/4 v1, 0x1

    .line 1137
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x11

    const/16 v4, 0x42

    .line 1161
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1165
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1167
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1169
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1171
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1173
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1177
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1235
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 1177
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 1183
    goto :goto_0

    .line 1189
    :cond_3
    const/4 v1, 0x0

    .line 1191
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 1193
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 1235
    goto :goto_0

    .line 1197
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1199
    invoke-virtual {p0, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1203
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 1207
    goto :goto_1

    .line 1211
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1213
    invoke-virtual {p0, v4}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 1217
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 1221
    goto :goto_1

    .line 1225
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v4

    goto :goto_2

    .line 1193
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 2881
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2883
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 2885
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 2889
    .local v11, right:I
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2891
    iput-boolean v13, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 2895
    if-lez p1, :cond_3

    move v9, v13

    .line 2896
    .local v9, movingRight:Z
    :goto_0
    iput-boolean v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMovingRight:Z

    .line 2897
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 2903
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_0

    .line 2905
    move-object v10, p0

    .line 2911
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_1

    if-eqz v9, :cond_4

    const/16 v0, 0x42

    :goto_1
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2915
    iput-boolean v13, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 2917
    iput-boolean v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 2923
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 2927
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_2
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_3
    move v9, v4

    .line 2895
    goto :goto_0

    .line 2911
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x11

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/4 v5, 0x0

    .line 1891
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1893
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 1897
    .local v3, width:I
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1899
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->right:I

    .line 1903
    if-eqz v1, :cond_0

    .line 1905
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1907
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1909
    invoke-virtual {p0, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1911
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1913
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1921
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v5

    .line 1891
    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 749
    const/4 v1, 0x0

    .line 765
    :goto_0
    return v1

    .line 755
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 757
    .local v0, length:I
    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ge v1, v0, :cond_1

    .line 759
    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 765
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 813
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 777
    const/4 v3, 0x0

    .line 797
    :goto_0
    return v3

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 785
    .local v0, length:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 787
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 789
    .local v2, span:I
    if-ge v2, v0, :cond_1

    .line 791
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_0

    .line 797
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public isFillViewport()Z
    .locals 1

    .prologue
    .line 951
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 2281
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2291
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 2297
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2301
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2303
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 2313
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2317
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 2323
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2329
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2331
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 607
    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/android/email/winset/TwTabWidgetWrapper;

    invoke-static {v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/winset/TwTabWidget;->requestFocus()Z

    .line 617
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1269
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    move v5, v8

    .line 1401
    :goto_0
    return v5

    .line 1277
    :cond_0
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1279
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    move v5, v7

    .line 1281
    goto :goto_0

    .line 1287
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1291
    .local v3, x:F
    packed-switch v0, :pswitch_data_0

    .line 1401
    :goto_1
    iget-boolean v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 1313
    :pswitch_0
    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 1315
    .local v4, xDiff:I
    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_2

    .line 1317
    iput-boolean v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 1319
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1323
    :cond_2
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    goto :goto_1

    .line 1333
    .end local v4           #xDiff:I
    :pswitch_1
    iput v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 1347
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1349
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1353
    :cond_3
    iget-boolean v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMovingRight:Z

    if-nez v5, :cond_5

    .line 1354
    iget v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-lez v5, :cond_4

    .line 1355
    iput-boolean v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1359
    :cond_4
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1364
    :cond_5
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v2, v5, v6

    .line 1365
    .local v2, rightEdge:I
    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v5, v6

    sub-int v1, v5, v2

    .line 1366
    .local v1, availableToScroll:I
    if-lez v1, :cond_6

    .line 1367
    iput-boolean v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1371
    :cond_6
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1385
    .end local v1           #availableToScroll:I
    .end local v2           #rightEdge:I
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 1291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2781
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 2787
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2793
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 2799
    iget v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollTo(II)V

    .line 2801
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1023
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 1025
    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1027
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 1023
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1033
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1055
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1057
    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1059
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 1055
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1065
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1069
    iget-boolean v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-nez v7, :cond_3

    .line 1119
    :cond_2
    :goto_2
    return-void

    .line 1077
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 1079
    .local v6, widthMode:I
    if-eqz v6, :cond_2

    .line 1087
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_2

    .line 1089
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1091
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getMeasuredWidth()I

    move-result v5

    .line 1093
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v5, :cond_2

    .line 1095
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 1099
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1103
    .local v1, childHeightMeasureSpec:I
    iget v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v7

    .line 1105
    iget v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v7

    .line 1107
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1111
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 2701
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2703
    const/16 p1, 0x42

    .line 2713
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 2723
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 2739
    :goto_2
    return v1

    .line 2705
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 2707
    const/16 p1, 0x11

    goto :goto_0

    .line 2713
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 2731
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 2733
    goto :goto_2

    .line 2739
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2809
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2813
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2815
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 2837
    :cond_0
    :goto_0
    return-void

    .line 2821
    :cond_1
    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 2825
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2827
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2829
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2831
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 2833
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v7

    if-eqz v7, :cond_0

    move v7, v9

    .line 1549
    :goto_0
    return v7

    .line 1425
    :cond_0
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v9

    .line 1427
    goto :goto_0

    .line 1433
    :cond_1
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_2

    .line 1435
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1439
    :cond_2
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1445
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 1449
    .local v6, x:F
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v7, v10

    .line 1549
    goto :goto_0

    .line 1461
    :pswitch_0
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1463
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1469
    :cond_4
    iput-boolean v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1475
    iput v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    goto :goto_1

    .line 1483
    :pswitch_1
    iget v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float/2addr v7, v6

    float-to-int v2, v7

    .line 1485
    .local v2, deltaX:I
    iput v6, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 1489
    if-gez v2, :cond_5

    .line 1491
    iget v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-lez v7, :cond_3

    .line 1493
    invoke-virtual {p0, v2, v9}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1497
    :cond_5
    if-lez v2, :cond_3

    .line 1499
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v4, v7, v8

    .line 1501
    .local v4, rightEdge:I
    invoke-virtual {p0, v9}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v4

    .line 1503
    .local v1, availableToScroll:I
    if-lez v1, :cond_3

    .line 1505
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {p0, v7, v9}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_1

    .line 1515
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #rightEdge:I
    :pswitch_2
    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1517
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1519
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v3, v7

    .line 1523
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    if-le v7, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    .line 1525
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->fling(I)V

    .line 1527
    iput-boolean v10, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1539
    :goto_2
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_3

    .line 1541
    iget-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 1543
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 1531
    :cond_6
    iput-boolean v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1533
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_2

    .line 1449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    .line 1819
    const/16 v4, 0x42

    if-ne p1, v4, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 1821
    .local v1, right:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 1825
    .local v3, width:I
    if-eqz v1, :cond_2

    .line 1827
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1829
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1831
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1833
    invoke-virtual {p0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1835
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 1837
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1855
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1859
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_1
    move v1, v6

    .line 1819
    goto :goto_0

    .line 1845
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_2
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1847
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_0

    .line 1849
    iget-object v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2651
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 2653
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 2655
    invoke-direct {p0, p2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 2667
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2669
    return-void

    .line 2661
    :cond_1
    iput-object p2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2753
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2759
    invoke-direct {p0, p2, p3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 2771
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 2773
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2947
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2949
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p1

    .line 2951
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p2

    .line 2953
    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 2955
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 2961
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public scrollToTabView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 377
    if-nez p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 385
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 391
    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 399
    .local v1, scrollDelta:I
    if-eqz v1, :cond_0

    .line 407
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 975
    iput-boolean p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    .line 977
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->requestLayout()V

    .line 981
    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 1009
    iput-boolean p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 1011
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 2209
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 2211
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2213
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v4, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2215
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 2229
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    .line 2231
    return-void

    .line 2219
    :cond_0
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2221
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2225
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2249
    iget v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 2251
    return-void
.end method

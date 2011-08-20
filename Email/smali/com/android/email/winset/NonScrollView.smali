.class public Lcom/android/email/winset/NonScrollView;
.super Landroid/widget/FrameLayout;
.source "NonScrollView.java"


# instance fields
.field private bPreScrollState:Z

.field private bScrollBottom:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/winset/NonScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 138
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/winset/NonScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v3, p0, Lcom/android/email/winset/NonScrollView;->mIsLayoutDirty:Z

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 99
    iput-boolean v2, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    .line 115
    iput-boolean v3, p0, Lcom/android/email/winset/NonScrollView;->mSmoothScrollingEnabled:Z

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 192
    iput-boolean v2, p0, Lcom/android/email/winset/NonScrollView;->bScrollBottom:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/email/winset/NonScrollView;->bPreScrollState:Z

    .line 143
    invoke-direct {p0}, Lcom/android/email/winset/NonScrollView;->initScrollView()V

    .line 145
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 148
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->setFillViewport(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return-void
.end method

.method private canScroll()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 287
    invoke-virtual {p0, v5}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 290
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 292
    .end local v1           #childHeight:I
    :goto_0
    return v2

    .restart local v1       #childHeight:I
    :cond_0
    move v2, v5

    .line 290
    goto :goto_0

    .end local v1           #childHeight:I
    :cond_1
    move v2, v5

    .line 292
    goto :goto_0
.end method

.method private clamp(III)I
    .locals 1
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1373
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_1

    .line 1389
    :cond_0
    const/4 v0, 0x0

    .line 1399
    :goto_0
    return v0

    .line 1391
    :cond_1
    add-int v0, p2, p1

    if-le v0, p3, :cond_2

    .line 1397
    sub-int v0, p3, p2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 1399
    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 955
    if-eqz p1, :cond_0

    .line 956
    iget-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    .line 957
    invoke-virtual {p0, v1, p1}, Lcom/android/email/winset/NonScrollView;->smoothScrollBy(II)V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/android/email/winset/NonScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 696
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/email/winset/NonScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 697
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 706
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 708
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 709
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_8

    .line 710
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 711
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 712
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 714
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    .line 720
    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v10, 0x1

    move v8, v10

    .line 723
    .local v8, viewIsFullyContained:Z
    :goto_1
    if-nez v1, :cond_2

    .line 725
    move-object v1, v5

    .line 726
    move v3, v8

    .line 709
    .end local v8           #viewIsFullyContained:Z
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    :cond_1
    const/4 v10, 0x0

    move v8, v10

    goto :goto_1

    .line 728
    .restart local v8       #viewIsFullyContained:Z
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    move v7, v10

    .line 733
    .local v7, viewIsCloserToBoundary:Z
    :goto_3
    if-eqz v3, :cond_6

    .line 734
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    .line 740
    move-object v1, v5

    goto :goto_2

    .line 728
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_5
    const/4 v10, 0x0

    move v7, v10

    goto :goto_3

    .line 743
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_6
    if-eqz v8, :cond_7

    .line 745
    move-object v1, v5

    .line 746
    const/4 v3, 0x1

    goto :goto_2

    .line 747
    :cond_7
    if-eqz v7, :cond_0

    .line 752
    move-object v1, v5

    goto :goto_2

    .line 759
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_8
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 666
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 667
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 669
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_0

    move-object v3, p3

    .line 675
    :goto_0
    return-object v3

    :cond_0
    invoke-direct {p0, p1, v2, v0}, Lcom/android/email/winset/NonScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method private inChild(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 422
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    .line 423
    .local v1, scrollY:I
    invoke-virtual {p0, v3}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 424
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v1

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p2, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    .line 429
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :goto_0
    return v2

    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #scrollY:I
    :cond_0
    move v2, v3

    .line 424
    goto :goto_0

    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_1
    move v2, v3

    .line 429
    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    .prologue
    .line 237
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    .line 238
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->setFocusable(Z)V

    .line 239
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->setDescendantFocusability(I)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->setWillNotDraw(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/email/winset/NonScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 242
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/NonScrollView;->mTouchSlop:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/NonScrollView;->mMinimumVelocity:I

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/email/winset/NonScrollView;->mMaximumVelocity:I

    .line 245
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2
    .parameter "descendant"

    .prologue
    const/4 v1, 0x0

    .line 934
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/email/winset/NonScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

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

    .line 1313
    if-ne p1, p2, :cond_0

    move v1, v2

    .line 1318
    :goto_0
    return v1

    .line 1317
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1318
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/email/winset/NonScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 943
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/NonScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 945
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 617
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 618
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 622
    if-nez v2, :cond_1

    const/4 v3, 0x1

    move v0, v3

    .line 623
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    .line 624
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 625
    iget-object v3, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 626
    iget-object v3, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 629
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 622
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private scrollAndFocus(III)Z
    .locals 10
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 843
    const/4 v3, 0x1

    .line 845
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v4

    .line 846
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v1

    .line 847
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 848
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    move v6, v9

    .line 850
    .local v6, up:Z
    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/android/email/winset/NonScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 851
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_0

    .line 852
    move-object v5, p0

    .line 855
    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    .line 856
    const/4 v3, 0x0

    .line 862
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 863
    iput-boolean v9, p0, Lcom/android/email/winset/NonScrollView;->mScrollViewMovedFocus:Z

    .line 864
    iput-boolean v8, p0, Lcom/android/email/winset/NonScrollView;->mScrollViewMovedFocus:Z

    .line 867
    :cond_1
    return v3

    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_2
    move v6, v8

    .line 848
    goto :goto_0

    .line 858
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_3
    if-eqz v6, :cond_4

    sub-int v7, p2, v1

    move v2, v7

    .line 859
    .local v2, delta:I
    :goto_2
    invoke-direct {p0, v2}, Lcom/android/email/winset/NonScrollView;->doScrollY(I)V

    goto :goto_1

    .line 858
    .end local v2           #delta:I
    :cond_4
    sub-int v7, p3, v0

    move v2, v7

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1100
    iget-object v1, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1103
    iget-object v1, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/email/winset/NonScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1105
    iget-object v1, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1107
    .local v0, scrollDelta:I
    if-eqz v0, :cond_0

    .line 1108
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/email/winset/NonScrollView;->scrollBy(II)V

    .line 1110
    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 4
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 1121
    invoke-virtual {p0, p1}, Lcom/android/email/winset/NonScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1122
    .local v0, delta:I
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .line 1123
    .local v1, scroll:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1124
    if-eqz p2, :cond_2

    .line 1125
    invoke-virtual {p0, v3, v0}, Lcom/android/email/winset/NonScrollView;->scrollBy(II)V

    .line 1130
    :cond_0
    :goto_1
    return v1

    .end local v1           #scroll:Z
    :cond_1
    move v1, v3

    .line 1122
    goto :goto_0

    .line 1127
    .restart local v1       #scroll:Z
    :cond_2
    invoke-virtual {p0, v3, v0}, Lcom/android/email/winset/NonScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 263
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 878
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 879
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 881
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 883
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 885
    .local v3, maxJump:I
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Lcom/android/email/winset/NonScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 886
    iget-object v7, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 887
    iget-object v7, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/email/winset/NonScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 888
    iget-object v7, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/email/winset/NonScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 889
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/email/winset/NonScrollView;->doScrollY(I)V

    .line 890
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 914
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/email/winset/NonScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 921
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getDescendantFocusability()I

    move-result v2

    .line 922
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/email/winset/NonScrollView;->setDescendantFocusability(I)V

    .line 923
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->requestFocus()Z

    .line 924
    invoke-virtual {p0, v2}, Lcom/android/email/winset/NonScrollView;->setDescendantFocusability(I)V

    .line 926
    .end local v2           #descendantFocusability:I
    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 893
    .end local v6           #scrollDelta:I
    :cond_2
    move v6, v3

    .line 895
    .restart local v6       #scrollDelta:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v6, :cond_4

    .line 896
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v6

    .line 908
    :cond_3
    :goto_2
    if-nez v6, :cond_5

    move v7, v9

    .line 909
    goto :goto_1

    .line 897
    :cond_4
    if-ne p1, v10, :cond_3

    .line 898
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 899
    invoke-virtual {p0, v9}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 901
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v8

    add-int v5, v7, v8

    .line 903
    .local v5, screenBottom:I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_3

    .line 904
    sub-int v6, v1, v5

    goto :goto_2

    .line 911
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_5
    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_3
    invoke-direct {p0, v7}, Lcom/android/email/winset/NonScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_6
    neg-int v7, v6

    goto :goto_3
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1055
    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1072
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    .line 1073
    .local v1, oldX:I
    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    .line 1074
    .local v2, oldY:I
    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1075
    .local v3, x:I
    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 1077
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1078
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1079
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/android/email/winset/NonScrollView;->clamp(III)I

    move-result v3

    .line 1080
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/winset/NonScrollView;->clamp(III)I

    move-result v4

    .line 1081
    if-ne v3, v1, :cond_0

    if-eq v4, v2, :cond_1

    .line 1082
    :cond_0
    iput v3, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    .line 1083
    iput v4, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    .line 1084
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/email/winset/NonScrollView;->onScrollChanged(IIII)V

    .line 1087
    .end local v0           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->awakenScrollBars()Z

    .line 1090
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->postInvalidate()V

    .line 1092
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_2
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10
    .parameter "rect"

    .prologue
    const/4 v9, 0x0

    .line 1142
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 1196
    :goto_0
    return v7

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v3

    .line 1145
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v5

    .line 1146
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1148
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1151
    .local v2, fadingEdge:I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1

    .line 1152
    add-int/2addr v5, v2

    .line 1156
    :cond_1
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 1157
    sub-int/2addr v4, v2

    .line 1160
    :cond_2
    const/4 v6, 0x0

    .line 1162
    .local v6, scrollYDelta:I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_5

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_5

    .line 1167
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1169
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/2addr v6, v7

    .line 1176
    :goto_1
    invoke-virtual {p0, v9}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1177
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1178
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_3
    :goto_2
    move v7, v6

    .line 1196
    goto :goto_0

    .line 1172
    :cond_4
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    .line 1180
    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_3

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_3

    .line 1185
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    .line 1187
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1194
    :goto_3
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    .line 1190
    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_3
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1021
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v1

    .line 1011
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int v0, v2, v3

    .line 1012
    .local v0, contentHeight:I
    if-nez v1, :cond_0

    move v2, v0

    .line 1016
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 367
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/email/winset/NonScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 379
    iget-object v3, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 381
    invoke-direct {p0}, Lcom/android/email/winset/NonScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 382
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 385
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 417
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :goto_0
    return v3

    .restart local v0       #currentFocused:Landroid/view/View;
    .restart local v2       #nextFocused:Landroid/view/View;
    :cond_1
    move v3, v6

    .line 387
    goto :goto_0

    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_2
    move v3, v6

    .line 391
    goto :goto_0

    .line 394
    :cond_3
    const/4 v1, 0x0

    .line 395
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    .line 396
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v3, v1

    .line 417
    goto :goto_0

    .line 398
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 399
    invoke-virtual {p0, v4}, Lcom/android/email/winset/NonScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 401
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/email/winset/NonScrollView;->fullScroll(I)Z

    move-result v1

    .line 403
    goto :goto_1

    .line 405
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_6

    .line 406
    invoke-virtual {p0, v5}, Lcom/android/email/winset/NonScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    .line 408
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/email/winset/NonScrollView;->fullScroll(I)Z

    move-result v1

    .line 410
    goto :goto_1

    .line 412
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/email/winset/NonScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_2

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 14
    .parameter "velocityY"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1330
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int v10, v0, v1

    .line 1331
    .local v10, height:I
    invoke-virtual {p0, v3}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1333
    .local v9, bottom:I
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    sub-int v4, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1336
    if-lez p1, :cond_3

    move v11, v13

    .line 1338
    .local v11, movingDown:Z
    :goto_0
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/android/email/winset/NonScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v12

    .line 1340
    .local v12, newFocused:Landroid/view/View;
    if-nez v12, :cond_0

    .line 1341
    move-object v12, p0

    .line 1344
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v12, v0, :cond_1

    if-eqz v11, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v12, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    iput-boolean v13, p0, Lcom/android/email/winset/NonScrollView;->mScrollViewMovedFocus:Z

    .line 1347
    iput-boolean v3, p0, Lcom/android/email/winset/NonScrollView;->mScrollViewMovedFocus:Z

    .line 1350
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->invalidate()V

    .line 1352
    .end local v9           #bottom:I
    .end local v10           #height:I
    .end local v11           #movingDown:Z
    .end local v12           #newFocused:Landroid/view/View;
    :cond_2
    return-void

    .restart local v9       #bottom:I
    .restart local v10       #height:I
    :cond_3
    move v11, v3

    .line 1336
    goto :goto_0

    .line 1344
    .restart local v11       #movingDown:Z
    .restart local v12       #newFocused:Landroid/view/View;
    :cond_4
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 811
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v6

    .line 812
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v2

    .line 814
    .local v2, height:I
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 815
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 817
    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    .line 819
    .local v0, count:I
    if-lez v0, :cond_0

    .line 820
    sub-int v4, v0, v6

    invoke-virtual {p0, v4}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 821
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 822
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 826
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/email/winset/NonScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v5

    .line 811
    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x0

    .line 180
    :goto_0
    return v3

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 174
    .local v1, length:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 175
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 176
    .local v2, span:I
    if-ge v2, v1, :cond_1

    .line 177
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    .line 180
    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 188
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mBottom:I

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 164
    :goto_0
    return v1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 160
    .local v0, length:I
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    .line 161
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 164
    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public isScrollBottom()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1031
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/email/winset/NonScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/email/winset/NonScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1034
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1036
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1037
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
    .line 1042
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1044
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/android/email/winset/NonScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/email/winset/NonScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/email/winset/NonScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1047
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1050
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1051
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->bPreScrollState:Z

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 223
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 446
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    iget-boolean v5, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_0

    move v5, v8

    .line 519
    :goto_0
    return v5

    .line 450
    :cond_0
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 519
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 463
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/email/winset/NonScrollView;->bScrollBottom:Z

    if-nez v5, :cond_1

    .line 465
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 466
    .local v1, activePointerId:I
    if-eq v1, v6, :cond_1

    .line 471
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 472
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 473
    .local v3, y:F
    iget v5, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v4, v5

    .line 474
    .local v4, yDiff:I
    iget v5, p0, Lcom/android/email/winset/NonScrollView;->mTouchSlop:I

    if-le v4, v5, :cond_1

    .line 475
    iput-boolean v8, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    .line 476
    iput v3, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    goto :goto_1

    .line 482
    .end local v1           #activePointerId:I
    .end local v2           #pointerIndex:I
    .end local v3           #y:F
    .end local v4           #yDiff:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 483
    .restart local v3       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    float-to-int v6, v3

    invoke-direct {p0, v5, v6}, Lcom/android/email/winset/NonScrollView;->inChild(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 484
    iput-boolean v7, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 492
    :cond_2
    iput v3, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    .line 493
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 500
    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v8

    :goto_2
    iput-boolean v5, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2

    .line 507
    .end local v3           #y:F
    :pswitch_3
    iput-boolean v7, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    .line 508
    iput v6, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    goto :goto_1

    .line 511
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/email/winset/NonScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
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
    .line 1266
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mIsLayoutDirty:Z

    .line 1269
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/email/winset/NonScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/email/winset/NonScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1272
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1275
    iget v0, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/winset/NonScrollView;->scrollTo(II)V

    .line 1276
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 335
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 337
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 342
    .local v4, heightMode:I
    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 347
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getMeasuredHeight()I

    move-result v3

    .line 349
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/android/email/winset/NonScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 354
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 355
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 356
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 359
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 1226
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1227
    const/16 p1, 0x82

    .line 1232
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1237
    .local v0, nextFocus:Landroid/view/View;
    :goto_1
    if-nez v0, :cond_3

    move v1, v3

    .line 1245
    :goto_2
    return v1

    .line 1228
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1229
    const/16 p1, 0x21

    goto :goto_0

    .line 1232
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 1241
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/winset/NonScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    .line 1242
    goto :goto_2

    .line 1245
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1284
    iget-boolean v1, p0, Lcom/android/email/winset/NonScrollView;->bPreScrollState:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1287
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/email/winset/NonScrollView;->scrollTo(II)V

    .line 1292
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1293
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_1

    if-ne p0, v0, :cond_1

    .line 1307
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    .line 611
    :goto_0
    return v6

    .line 531
    :cond_0
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_1

    .line 532
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 534
    :cond_1
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 538
    .local v0, action:I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v6, v9

    .line 611
    goto :goto_0

    .line 540
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 541
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    float-to-int v7, v5

    invoke-direct {p0, v6, v7}, Lcom/android/email/winset/NonScrollView;->inChild(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    if-nez v6, :cond_3

    move v6, v8

    .line 542
    goto :goto_0

    .line 549
    :cond_3
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 550
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 554
    :cond_4
    iput v5, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    .line 555
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    goto :goto_1

    .line 561
    .end local v5           #y:F
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->bScrollBottom:Z

    if-eq v6, v9, :cond_2

    .line 563
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_2

    .line 565
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 566
    .local v1, activePointerIndex:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 567
    .restart local v5       #y:F
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    sub-float/2addr v6, v5

    float-to-int v2, v6

    .line 568
    .local v2, deltaY:I
    iput v5, p0, Lcom/android/email/winset/NonScrollView;->mLastMotionY:F

    .line 570
    invoke-virtual {p0, v8, v2}, Lcom/android/email/winset/NonScrollView;->scrollBy(II)V

    goto :goto_1

    .line 576
    .end local v1           #activePointerIndex:I
    .end local v2           #deltaY:I
    .end local v5           #y:F
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->bScrollBottom:Z

    if-eq v6, v9, :cond_2

    .line 579
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_2

    .line 580
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 581
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 582
    iget v6, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    float-to-int v3, v6

    .line 584
    .local v3, initialVelocity:I
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mMinimumVelocity:I

    if-le v6, v7, :cond_5

    .line 585
    neg-int v6, v3

    invoke-virtual {p0, v6}, Lcom/android/email/winset/NonScrollView;->fling(I)V

    .line 588
    :cond_5
    iput v10, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 589
    iput-boolean v8, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    .line 591
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    .line 592
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 593
    iput-object v11, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 598
    .end local v3           #initialVelocity:I
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_4
    iget-boolean v6, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 599
    iput v10, p0, Lcom/android/email/winset/NonScrollView;->mActivePointerId:I

    .line 600
    iput-boolean v8, p0, Lcom/android/email/winset/NonScrollView;->mIsBeingDragged:Z

    .line 601
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_2

    .line 602
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 603
    iput-object v11, p0, Lcom/android/email/winset/NonScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 608
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/email/winset/NonScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 8
    .parameter "direction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 775
    const/16 v4, 0x82

    if-ne p1, v4, :cond_1

    move v1, v7

    .line 776
    .local v1, down:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v2

    .line 778
    .local v2, height:I
    if-eqz v1, :cond_2

    .line 779
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 780
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v0

    .line 781
    .local v0, count:I
    if-lez v0, :cond_0

    .line 782
    sub-int v4, v0, v7

    invoke-virtual {p0, v4}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 783
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 784
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 793
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 795
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/email/winset/NonScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_1
    move v1, v6

    .line 775
    goto :goto_0

    .line 788
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_2
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 789
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_0

    .line 790
    iget-object v4, p0, Lcom/android/email/winset/NonScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_0

    .line 1202
    iget-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_1

    .line 1203
    invoke-direct {p0, p2}, Lcom/android/email/winset/NonScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1209
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1210
    return-void

    .line 1206
    :cond_1
    iput-object p2, p0, Lcom/android/email/winset/NonScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1252
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

    .line 1255
    invoke-direct {p0, p2, p3}, Lcom/android/email/winset/NonScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mIsLayoutDirty:Z

    .line 1261
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1262
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->isScrollBottom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->bPreScrollState:Z

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/winset/NonScrollView;->setIsScrollBottom(Z)V

    .line 217
    return-void
.end method

.method public scrollTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1363
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1364
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/email/winset/NonScrollView;->clamp(III)I

    move-result p1

    .line 1365
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/email/winset/NonScrollView;->clamp(III)I

    move-result p2

    .line 1366
    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    .line 1367
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1370
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter "fillViewport"

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/email/winset/NonScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/android/email/winset/NonScrollView;->mFillViewport:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->requestLayout()V

    .line 316
    :cond_0
    return-void
.end method

.method public setIsScrollBottom(Z)V
    .locals 0
    .parameter "bSet"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/email/winset/NonScrollView;->bScrollBottom:Z

    .line 204
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 11
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 971
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 992
    :goto_0
    return-void

    .line 975
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/email/winset/NonScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 976
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 978
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/android/email/winset/NonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 979
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 980
    .local v4, maxY:I
    iget v5, p0, Lcom/android/email/winset/NonScrollView;->mScrollY:I

    .line 981
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 983
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    iget v7, p0, Lcom/android/email/winset/NonScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 984
    invoke-virtual {p0}, Lcom/android/email/winset/NonScrollView;->invalidate()V

    .line 991
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/email/winset/NonScrollView;->mLastScroll:J

    goto :goto_0

    .line 986
    :cond_1
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 987
    iget-object v6, p0, Lcom/android/email/winset/NonScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 989
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/winset/NonScrollView;->scrollBy(II)V

    goto :goto_1
.end method

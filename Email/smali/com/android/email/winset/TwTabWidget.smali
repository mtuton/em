.class public Lcom/android/email/winset/TwTabWidget;
.super Landroid/widget/LinearLayout;
.source "TwTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/TwTabWidget$1;,
        Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;,
        Lcom/android/email/winset/TwTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawBottomStrips:Z

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/winset/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const/high16 v0, 0x201

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/winset/TwTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v2, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/winset/TwTabWidget;->mDrawBottomStrips:Z

    .line 121
    invoke-direct {p0}, Lcom/android/email/winset/TwTabWidget;->initTabWidget()V

    .line 123
    sget-object v1, Ltouchwiz/R$styleable;->TwTabWidget:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 126
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/winset/TwTabWidget;)Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectionChangedListener:Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 4

    .prologue
    .line 149
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidget;->setOrientation(I)V

    .line 150
    iget v2, p0, Lcom/android/email/winset/TwTabWidget;->mGroupFlags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lcom/android/email/winset/TwTabWidget;->mGroupFlags:I

    .line 151
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidget;->mContext:Landroid/content/Context;

    .line 152
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 159
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidget;->setFocusable(Z)V

    .line 160
    invoke-virtual {p0, p0}, Lcom/android/email/winset/TwTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 161
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6
    .parameter "child"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-nez v2, :cond_2

    .line 405
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 408
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 409
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 414
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 420
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 421
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, divider:Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 426
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    .end local v0           #divider:Landroid/widget/ImageView;
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    new-instance v2, Lcom/android/email/winset/TwTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/email/winset/TwTabWidget$TabClickListener;-><init>(Lcom/android/email/winset/TwTabWidget;ILcom/android/email/winset/TwTabWidget$1;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 228
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->invalidate()V

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 233
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-boolean v3, p0, Lcom/android/email/winset/TwTabWidget;->mDrawBottomStrips:Z

    if-eqz v3, :cond_0

    .line 253
    iget v3, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 255
    .local v2, selectedChild:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 259
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 260
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 262
    iget-boolean v3, p0, Lcom/android/email/winset/TwTabWidget;->mStripMoved:Z

    if-eqz v3, :cond_2

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 264
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 265
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 266
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getHeight()I

    move-result v0

    .line 267
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 273
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getWidth()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 279
    iput-boolean v9, p0, Lcom/android/email/winset/TwTabWidget;->mStripMoved:Z

    .line 282
    .end local v0           #myHeight:I
    .end local v1           #selBounds:Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v3, p0, Lcom/android/email/winset/TwTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public focusAndRefreshCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 329
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidget;->setCurrentTab(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 354
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    .line 361
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidget;->setCurrentTab(I)V

    .line 364
    if-eq v0, p1, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 139
    const/4 v0, 0x1

    sub-int v0, p1, v0

    if-ne p2, v0, :cond_0

    .line 140
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    .line 144
    :goto_0
    return v0

    .line 141
    :cond_0
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_1

    .line 142
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 144
    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 175
    mul-int/lit8 p1, p1, 0x2

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/winset/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getChildCount()I

    move-result v0

    .line 192
    .local v0, children:I
    iget-object v1, p0, Lcom/android/email/winset/TwTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 193
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 195
    :cond_0
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 546
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 547
    iget v2, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 548
    iget v2, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    if-eqz p2, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, i:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v1

    .line 556
    .local v1, numTabs:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 558
    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->setCurrentTab(I)V

    .line 559
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidget;->mSelectionChangedListener:Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    .line 562
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    .line 455
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 457
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getChildCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 536
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v8

    .line 483
    .local v8, tabCount:I
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 484
    .local v6, p:Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v7

    .line 486
    .local v7, parentWidth:I
    move v5, v7

    .line 501
    .local v5, myWidth:I
    const/4 v3, 0x0

    .line 503
    .local v3, indicatorWidth:I
    const/4 v9, 0x4

    if-le v8, v9, :cond_1

    .line 505
    div-int/lit8 v3, v5, 0x4

    .line 515
    :goto_1
    if-lez v3, :cond_2

    .line 516
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v8, :cond_2

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 521
    .local v2, indicator:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 522
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v9, v3, v9

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v0, v9, v10

    .line 527
    .local v0, MeasureIndicatorWidth:I
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/view/View;->measure(II)V

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 509
    .end local v0           #MeasureIndicatorWidth:I
    .end local v1           #i:I
    .end local v2           #indicator:Landroid/view/View;
    .end local v4           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getChildCount()I

    move-result v9

    div-int v3, v5, v9

    goto :goto_1

    .line 532
    :cond_2
    mul-int v9, v3, v8

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/email/winset/TwTabWidget;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/winset/TwTabWidget;->mStripMoved:Z

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 133
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 384
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 392
    .local v0, horizontalPadding:I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/android/email/winset/TwTabWidget;->setPadding(IIII)V

    .line 396
    .end local v0           #horizontalPadding:I
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/email/winset/TwTabWidget;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 314
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 323
    iput p1, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    .line 324
    iget v0, p0, Lcom/android/email/winset/TwTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 325
    iput-boolean v2, p0, Lcom/android/email/winset/TwTabWidget;->mStripMoved:Z

    goto :goto_0
.end method

.method setDrawBottomStrips(Z)V
    .locals 0
    .parameter "drawBottomStrips"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/android/email/winset/TwTabWidget;->mDrawBottomStrips:Z

    .line 224
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v1

    .line 374
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 375
    invoke-virtual {p0, v2}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidget;->mSelectionChangedListener:Lcom/android/email/winset/TwTabWidget$OnTabSelectionChanged;

    .line 543
    return-void
.end method

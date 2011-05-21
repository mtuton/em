.class Lcom/android/email/winset/TwTabWidgetWrapper;
.super Landroid/widget/LinearLayout;
.source "TwTabWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwTabWidgetWrapper"


# instance fields
.field private TWTABIMAGE_SIDE_PADDING:F

.field private mScale:F

.field mScrollToCurrentItem:Ljava/lang/Runnable;

.field private mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

.field private mTabHost:Lcom/android/email/winset/TwTabHost;

.field private mTabWidget:Lcom/android/email/winset/TwTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/winset/TwTabHost;)V
    .locals 3
    .parameter "context"
    .parameter "tabHost"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    .line 50
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    .line 89
    new-instance v0, Lcom/android/email/winset/TwTabWidgetWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/email/winset/TwTabWidgetWrapper$1;-><init>(Lcom/android/email/winset/TwTabWidgetWrapper;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    .line 57
    new-instance v0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;-><init>(Lcom/android/email/winset/TwTabWidgetWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    .line 58
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setFillViewport(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method


# virtual methods
.method public addTabWidget(Lcom/android/email/winset/TwTabWidget;)V
    .locals 5
    .parameter "tabWidget"

    .prologue
    const/4 v4, 0x0

    .line 66
    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 68
    .local v1, tabImageSizePadding:I
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    .line 69
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0, v2, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/16 v12, 0x10

    .line 104
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v9}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v9

    if-nez v9, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .local v6, rectOfFirstTab:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v7, rectOfLastTab:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v8, rectOfScrollView:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/email/winset/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, firstTab:Landroid/view/View;
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    iget-object v10, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v10}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/email/winset/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, lastTab:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 117
    invoke-virtual {v1, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 118
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v9, v8}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 120
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v9, v0, v6}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 121
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v9, v1, v7}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 126
    iget-object v9, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v9}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v9

    const/4 v10, 0x4

    if-le v9, v10, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 128
    .local v2, mLightingLeft:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 129
    .local v3, mLightingRight:Landroid/graphics/drawable/Drawable;
    sget v9, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    if-nez v9, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2020089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x202008b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 137
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget v10, v8, Landroid/graphics/Rect;->left:I

    if-ge v9, v10, :cond_2

    .line 138
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .local v4, rectLightingLeft:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getLeft()I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 143
    iget v9, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 145
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-static {v12, v9, v10, v4, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 152
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    .end local v4           #rectLightingLeft:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget v10, v8, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_0

    .line 156
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .local v5, rectLightingRight:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getRight()I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 161
    iget v9, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 163
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-static {v12, v9, v10, v5, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 169
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 170
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 133
    .end local v5           #rectLightingRight:Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2020088

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 134
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x202008a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method rescheduleSelectCurrentItem()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method

.method public scrollToTab(I)V
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->scrollToTab(IZ)V

    .line 79
    return-void
.end method

.method public scrollToTab(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "animate"

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToTabView(Landroid/view/View;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->access$000(Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V

    goto :goto_0
.end method

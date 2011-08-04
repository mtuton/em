.class Lcom/android/email/winset/TwTabWidgetWrapper;
.super Landroid/widget/LinearLayout;
.source "TwTabWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;
    }
.end annotation


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

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    .line 64
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    .line 103
    new-instance v0, Lcom/android/email/winset/TwTabWidgetWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/email/winset/TwTabWidgetWrapper$1;-><init>(Lcom/android/email/winset/TwTabWidgetWrapper;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollToCurrentItem:Ljava/lang/Runnable;

    .line 69
    iput-object p2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    .line 71
    new-instance v0, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;-><init>(Lcom/android/email/winset/TwTabWidgetWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    .line 72
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setFillViewport(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {v0, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/winset/TwTabWidgetWrapper;)Lcom/android/email/winset/TwTabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    return-object v0
.end method


# virtual methods
.method public addTabWidget(Lcom/android/email/winset/TwTabWidget;)V
    .locals 5
    .parameter "tabWidget"

    .prologue
    const/4 v4, 0x0

    .line 80
    iget v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->TWTABIMAGE_SIDE_PADDING:F

    iget v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 82
    .local v1, tabImageSizePadding:I
    iput-object p1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    .line 83
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v3, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v2, v3}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->addView(Landroid/view/View;)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 87
    neg-int v2, v1

    neg-int v3, v1

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 88
    iget-object v2, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    invoke-virtual {p0, v2, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 119
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v10

    .line 122
    .local v10, ne:Ljava/lang/NullPointerException;
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v10           #ne:Ljava/lang/NullPointerException;
    :cond_1
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 130
    .local v14, rectOfFirstTab:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v15, rectOfLastTab:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .local v13, rectOfCurrentTab:Landroid/graphics/Rect;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v16, rectOfScrollView:Landroid/graphics/Rect;
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v17, rectOfTabHostView:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/email/winset/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 136
    .local v6, firstTab:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/winset/TwTabWidget;->getTabCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/android/email/winset/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 137
    .local v7, lastTab:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/winset/TwTabHost;->getCurrentTab()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, currentTab:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 143
    invoke-virtual {v6, v14}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 144
    invoke-virtual {v7, v15}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {v5, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabHost;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabHost:Lcom/android/email/winset/TwTabHost;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/email/winset/TwTabHost;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 158
    const/4 v8, 0x0

    .line 159
    .local v8, mLightingLeft:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 162
    .local v9, mLightingRight:Landroid/graphics/drawable/Drawable;
    sget v18, Lcom/android/email/winset/TwTabHost;->mTabIndicatorType:I

    if-nez v18, :cond_5

    .line 163
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20200c0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x202008b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 188
    :goto_1
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 189
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 191
    .local v11, rectLightingLeft:Landroid/graphics/Rect;
    invoke-virtual {v6, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getLeft()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 194
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 196
    const/16 v18, 0x10

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object v3, v11

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 202
    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 203
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    .end local v11           #rectLightingLeft:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 207
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 209
    .local v12, rectLightingRight:Landroid/graphics/Rect;
    invoke-virtual {v7, v12}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getRight()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 212
    move-object v0, v12

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object v1, v12

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 214
    const/16 v18, 0x10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object v3, v12

    move-object v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 221
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 166
    .end local v12           #rectLightingRight:Landroid/graphics/Rect;
    :cond_3
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2020089

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20200c2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 170
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2020089

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x202008b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 176
    :cond_5
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20200bf

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x202008a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 179
    :cond_6
    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2020088

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x20200c1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1

    .line 183
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x2020088

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/winset/TwTabWidgetWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x202008a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_1
.end method

.method public scrollToTab(I)V
    .locals 1
    .parameter "tabIndex"

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/email/winset/TwTabWidgetWrapper;->scrollToTab(IZ)V

    .line 93
    return-void
.end method

.method public scrollToTab(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "animate"

    .prologue
    .line 96
    if-eqz p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToTabView(Landroid/view/View;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mScrollView:Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;

    iget-object v1, p0, Lcom/android/email/winset/TwTabWidgetWrapper;->mTabWidget:Lcom/android/email/winset/TwTabWidget;

    invoke-virtual {v1, p1}, Lcom/android/email/winset/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;->access$000(Lcom/android/email/winset/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V

    goto :goto_0
.end method

.class public Lcom/android/email/IconPopupMenu;
.super Ljava/lang/Object;
.source "IconPopupMenu.java"


# instance fields
.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mDecorView:Landroid/view/View;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mRect:Landroid/graphics/Rect;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShadowHoriz:I

.field private mShadowTouch:I

.field private mShadowVert:I

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackAnim:Landroid/view/animation/Animation;

.field private mTrackScroll:Landroid/widget/HorizontalScrollView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mbShowing:Z

.field private mrtSelection:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/IconPopupMenu;->mbShowing:Z

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mRect:Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0c0007

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mContext:Landroid/content/Context;

    .line 94
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 95
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    .line 97
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    .line 98
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f030023

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    .line 103
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700a7

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mRootView:Landroid/widget/RelativeLayout;

    .line 104
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 105
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mRootView:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setDescendantFocusability(I)V

    .line 108
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700ac

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mArrowUp:Landroid/widget/ImageView;

    .line 109
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mArrowDown:Landroid/widget/ImageView;

    .line 111
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, res:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    .line 113
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/IconPopupMenu;->mShadowVert:I

    .line 114
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/IconPopupMenu;->mShadowTouch:I

    .line 116
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700aa

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    .line 117
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    const v2, 0x7f0700a9

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    .line 120
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f040004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/IconPopupMenu;->mTrackAnim:Landroid/view/animation/Animation;

    .line 121
    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/email/IconPopupMenu$1;

    invoke-direct {v2, p0}, Lcom/android/email/IconPopupMenu$1;-><init>(Lcom/android/email/IconPopupMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    return-void
.end method

.method private showArrow(II)V
    .locals 8
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v5, 0x7f0700ac

    const/16 v7, 0x18b

    const/16 v6, 0xf

    .line 257
    if-ne p1, v5, :cond_2

    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mArrowUp:Landroid/widget/ImageView;

    move-object v3, v4

    .line 258
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v5, :cond_3

    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mArrowDown:Landroid/widget/ImageView;

    move-object v1, v4

    .line 260
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 262
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 265
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    sub-int v4, p2, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 266
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ge v4, v6, :cond_0

    .line 267
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 269
    :cond_0
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v7, v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    .line 270
    iget v4, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v7, v4

    sub-int/2addr v4, v0

    sub-int/2addr v4, v6

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 274
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    return-void

    .line 257
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mArrowDown:Landroid/widget/ImageView;

    move-object v3, v4

    goto :goto_0

    .line 258
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mArrowUp:Landroid/widget/ImageView;

    move-object v1, v4

    goto :goto_1
.end method


# virtual methods
.method public addIcon(ILandroid/view/View$OnClickListener;ILjava/lang/String;)V
    .locals 6
    .parameter "imageId"
    .parameter "clickListener"
    .parameter "id"
    .parameter "desc"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    iget-object v4, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 141
    .local v1, vIcon:Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 143
    const-string v2, "IconPopupMenu"

    const-string v3, "addIcon : image or clickListener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 151
    .local v0, nIndex:I
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    .line 286
    iget-object v0, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 289
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/IconPopupMenu;->mbShowing:Z

    .line 291
    iget-object v0, p0, Lcom/android/email/IconPopupMenu;->mTrackScroll:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 292
    return-void
.end method

.method public show(Landroid/graphics/Rect;ILandroid/webkit/WebView;)V
    .locals 8
    .parameter "rtSelection"
    .parameter "nMode"
    .parameter "view"

    .prologue
    const/16 v7, 0x18b

    const/4 v6, 0x1

    const-string v5, "IconPopupMenu"

    .line 171
    iget-boolean v2, p0, Lcom/android/email/IconPopupMenu;->mbShowing:Z

    if-ne v6, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/email/IconPopupMenu;->hide()V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v2, v6, :cond_1

    .line 176
    const-string v2, "IconPopupMenu"

    const-string v2, "show : There is no icon added."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 180
    :cond_1
    if-nez p1, :cond_2

    .line 181
    const-string v2, "IconPopupMenu"

    const-string v2, "show : rtSelection is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_2
    if-nez p3, :cond_3

    .line 186
    const-string v2, "IconPopupMenu"

    const-string v2, "show : view is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_3
    iput-object p3, p0, Lcom/android/email/IconPopupMenu;->mWebView:Landroid/webkit/WebView;

    .line 201
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    .line 202
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/email/IconPopupMenu;->mScreenWidth:I

    .line 206
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 208
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    .line 209
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 211
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 216
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 220
    .local v1, nViewHeight:I
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    const/16 v3, 0xc5

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 221
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit16 v2, v2, 0x18b

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mScreenWidth:I

    if-le v2, v3, :cond_4

    .line 222
    iget v2, p0, Lcom/android/email/IconPopupMenu;->mScreenWidth:I

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    sub-int v3, v7, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 223
    :cond_4
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    neg-int v3, v3

    if-ge v2, v3, :cond_5

    .line 224
    iget v2, p0, Lcom/android/email/IconPopupMenu;->mShadowHoriz:I

    neg-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 226
    :cond_5
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/email/IconPopupMenu;->mScreenHeight:I

    .line 228
    const-string v2, "IconPopupMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "centerX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lp.x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v1, :cond_6

    .line 230
    const v2, 0x7f0700ad

    iget-object v3, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/email/IconPopupMenu;->showArrow(II)V

    .line 231
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 232
    const v2, 0x7f0c0008

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 242
    :goto_1
    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 243
    const/16 v2, 0x208

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 245
    const/16 v2, 0x3e8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 247
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/email/IconPopupMenu;->mDecorView:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iput-boolean v6, p0, Lcom/android/email/IconPopupMenu;->mbShowing:Z

    .line 250
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mTrack:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/email/IconPopupMenu;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 234
    :cond_6
    const v2, 0x7f0700ac

    iget-object v3, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/email/IconPopupMenu;->showArrow(II)V

    .line 235
    iget-object v2, p0, Lcom/android/email/IconPopupMenu;->mrtSelection:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mShadowVert:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 237
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mShadowVert:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/email/IconPopupMenu;->mScreenHeight:I

    if-le v2, v3, :cond_7

    .line 238
    iget v2, p0, Lcom/android/email/IconPopupMenu;->mScreenHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 239
    :cond_7
    const v2, 0x7f0c0009

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1
.end method

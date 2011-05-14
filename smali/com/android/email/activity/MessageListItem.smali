.class public Lcom/android/email/activity/MessageListItem;
.super Landroid/widget/RelativeLayout;
.source "MessageListItem.java"


# static fields
.field private static final CHECKMARK_PAD:F = 10.0f

.field private static final STAR_PAD:F = 10.0f

.field private static final TAG:Ljava/lang/String; = "MessageListItem >>"


# instance fields
.field public mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

.field private mAllowBatch:Z

.field private mCachedViewPositions:Z

.field private mCheckRight:I

.field private mCheckedAccountId:J

.field private mDownEvent:Z

.field public mFFlagComplete:Z

.field public mFFlagSet:Z

.field public mFavorite:Z

.field private mIsEAS:Z

.field public mMailboxId:J

.field public mMessageId:J

.field public mRead:Z

.field public mSelected:Z

.field private mStarLeft:I

.field private mStarTop:I

.field public mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 77
    return-void
.end method


# virtual methods
.method public IsEAS()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 200
    .local v1, context:Landroid/content/Context;
    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 201
    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    .line 211
    :goto_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    invoke-static {v1, v4, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 213
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 214
    iput-boolean v8, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 216
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 231
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :goto_1
    return v4

    .line 203
    :cond_0
    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    iget-wide v6, p0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 205
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    goto :goto_1

    .line 208
    :cond_1
    iget-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    iput-wide v4, p0, Lcom/android/email/activity/MessageListItem;->mCheckedAccountId:J

    goto :goto_0

    .line 219
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v2

    .line 222
    .local v2, info:Lcom/android/email/mail/Store$StoreInfo;
    if-nez v2, :cond_3

    .line 223
    iput-boolean v8, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 225
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    goto :goto_1

    .line 228
    :cond_3
    iget-object v3, v2, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    .line 229
    .local v3, scheme:Ljava/lang/String;
    const-string v4, "eas"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    .line 231
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListItem;->mIsEAS:Z

    goto :goto_1
.end method

.method public bindViewInit(Lcom/android/email/activity/MessageList$MessageListAdapter;Z)V
    .locals 1
    .parameter "adapter"
    .parameter "allowBatch"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    .line 87
    iput-boolean p2, p0, Lcom/android/email/activity/MessageListItem;->mAllowBatch:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItem;->mCachedViewPositions:Z

    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 99
    .local v4, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 102
    .local v5, touchY:I
    iget-wide v6, p0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 173
    :goto_0
    return v6

    .line 107
    :cond_0
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mCachedViewPositions:Z

    if-nez v6, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 109
    .local v2, paddingScale:F
    const/high16 v6, 0x4120

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 110
    .local v0, checkPadding:I
    const/high16 v6, 0x4120

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 111
    .local v3, starPadding:I
    const v6, 0x7f0700c1

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/email/activity/MessageListItem;->mCheckRight:I

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->getWidth()I

    move-result v6

    const v7, 0x7f0700c5

    invoke-virtual {p0, v7}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/email/activity/MessageListItem;->mStarLeft:I

    .line 114
    const v6, 0x7f0700c5

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/android/email/activity/MessageListItem;->mStarTop:I

    .line 115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mCachedViewPositions:Z

    .line 118
    .end local v0           #checkPadding:I
    .end local v2           #paddingScale:F
    .end local v3           #starPadding:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 167
    :cond_2
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_9

    .line 168
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->postInvalidate()V

    :goto_2
    move v6, v1

    .line 173
    goto :goto_0

    .line 120
    :pswitch_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mAllowBatch:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mCheckRight:I

    if-ge v4, v6, :cond_2

    .line 124
    const/4 v1, 0x1

    goto :goto_1

    .line 128
    :cond_3
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mAllowBatch:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mCheckRight:I

    if-lt v4, v6, :cond_5

    :cond_4
    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mStarLeft:I

    if-le v4, v6, :cond_2

    .line 130
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 136
    :pswitch_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    goto :goto_1

    .line 140
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mDownEvent:Z

    if-eqz v6, :cond_2

    .line 141
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mAllowBatch:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mCheckRight:I

    if-ge v4, v6, :cond_7

    .line 145
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    .line 149
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    .line 150
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    iget-boolean v7, p0, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    invoke-virtual {v6, p0, v7}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateSelected(Lcom/android/email/activity/MessageListItem;Z)V

    .line 151
    const/4 v1, 0x1

    goto :goto_1

    .line 149
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 154
    :cond_7
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mStarLeft:I

    if-le v4, v6, :cond_2

    iget v6, p0, Lcom/android/email/activity/MessageListItem;->mStarTop:I

    if-le v5, v6, :cond_2

    .line 156
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageListItem;->playSoundEffect(I)V

    .line 158
    iget-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, p0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    .line 159
    iget-object v6, p0, Lcom/android/email/activity/MessageListItem;->mAdapter:Lcom/android/email/activity/MessageList$MessageListAdapter;

    iget-boolean v7, p0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    invoke-virtual {v6, p0, v7}, Lcom/android/email/activity/MessageList$MessageListAdapter;->updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V

    .line 160
    const/4 v1, 0x1

    goto :goto_1

    .line 158
    :cond_8
    const/4 v6, 0x0

    goto :goto_4

    .line 170
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

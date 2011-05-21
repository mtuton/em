.class Lcom/android/email/activity/MessageView$DisplayViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplayViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RESOURCE:I = 0x7f030013


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageView$DisplayViewType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 3373
    const v0, 0x7f030013

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3374
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 3375
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 3382
    if-nez p2, :cond_1

    .line 3384
    iget-object v2, p0, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3386
    new-instance v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;-><init>()V

    .line 3387
    .local v0, holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    const v2, 0x7f070070

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    .line 3389
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3395
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageView$DisplayViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageView$DisplayViewType;

    .line 3396
    .local v1, viewType:Lcom/android/email/activity/MessageView$DisplayViewType;
    if-nez v1, :cond_0

    .line 3397
    const-string v2, "View >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid category for position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    :cond_0
    iget-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$DisplayViewType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3400
    iget-object v2, v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;->displayModeType:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageView$DisplayViewType;->getImg()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3402
    return-object p2

    .line 3392
    .end local v0           #holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    .end local v1           #viewType:Lcom/android/email/activity/MessageView$DisplayViewType;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/email/activity/MessageView$DisplayViewAdapter$ViewHolder;
    goto :goto_0
.end method

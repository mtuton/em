.class Lcom/android/email/activity/MessageList$TextSizeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSizeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RESOURCE:I = 0x7f030041


# instance fields
.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/android/email/activity/MessageList$TextSizeType;)V
    .locals 1
    .parameter "context"
    .parameter "objects"

    .prologue
    .line 1918
    const v0, 0x7f030041

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1919
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$TextSizeAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1920
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

    .line 1927
    if-nez p2, :cond_1

    .line 1929
    iget-object v2, p0, Lcom/android/email/activity/MessageList$TextSizeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030041

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1931
    new-instance v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;-><init>()V

    .line 1932
    .local v0, holder:Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;
    const v2, 0x7f070119

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeType:Landroid/widget/CheckedTextView;

    .line 1934
    const v2, 0x7f070118

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeSample:Landroid/widget/TextView;

    .line 1936
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1942
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$TextSizeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageList$TextSizeType;

    .line 1943
    .local v1, viewType:Lcom/android/email/activity/MessageList$TextSizeType;
    if-nez v1, :cond_0

    .line 1944
    const-string v2, "MessageList >>"

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

    .line 1946
    :cond_0
    iget-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeType:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$TextSizeType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1948
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$1900()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 1950
    iget-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeType:Landroid/widget/CheckedTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1957
    :goto_1
    iget-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeSample:Landroid/widget/TextView;

    const v3, 0x7f080120

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1958
    iget-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeSample:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList$TextSizeType;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1960
    return-object p2

    .line 1939
    .end local v0           #holder:Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;
    .end local v1           #viewType:Lcom/android/email/activity/MessageList$TextSizeType;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;
    goto :goto_0

    .line 1954
    .restart local v1       #viewType:Lcom/android/email/activity/MessageList$TextSizeType;
    :cond_2
    iget-object v2, v0, Lcom/android/email/activity/MessageList$TextSizeAdapter$ViewHolder;->textSizeType:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method

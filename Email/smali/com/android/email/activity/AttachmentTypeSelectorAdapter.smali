.class public Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
.super Lcom/android/email/activity/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;
    }
.end annotation


# static fields
.field private static mAllowAttachAudio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->mAllowAttachAudio:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 68
    invoke-static {p2, p1}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 70
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "resource"
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;II)V

    .line 210
    .local v0, temp:Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method protected static getData(ILandroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "mode"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x7

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    const v1, 0x7f080161

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020088

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 94
    const v1, 0x7f08015b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 97
    const v1, 0x7f08015d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008b

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 100
    sget-boolean v1, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->mAllowAttachAudio:Z

    if-eqz v1, :cond_0

    .line 101
    const v1, 0x7f08015f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020086

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 105
    :cond_0
    const v1, 0x7f08015c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020081

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 108
    const v1, 0x7f08015e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020082

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 111
    const v1, 0x7f080160

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020089

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 114
    const v1, 0x7f08013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020083

    invoke-static {v0, v1, v2, v4}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 117
    const v1, 0x7f08013e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020080

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 120
    const v1, 0x7f080140

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020085

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 123
    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;

    .line 84
    .local v0, item:Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-virtual {v0}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method

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
.field public static final ADD_IMAGE:I = 0x0

.field public static final ADD_SLIDESHOW:I = 0x7

.field public static final ADD_SOUND:I = 0x4

.field public static final ADD_VIDEO:I = 0x2

.field public static final MODE_WITH_ATTACHMENT:I = 0x1

.field public static final MODE_WITH_SLIDESHOW:I = 0x0

.field public static final OTHER_FILES:I = 0x6

.field public static final RECORD_SOUND:I = 0x5

.field public static final RECORD_VIDEO:I = 0x3

.field public static final TAKE_PICTURE:I = 0x1

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
    .line 66
    invoke-static {p2, p1}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "mode"
    .parameter "toReplaceMedia"

    .prologue
    .line 75
    invoke-static {p2, p1}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 77
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
    .line 204
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    new-instance v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;II)V

    .line 205
    .local v0, temp:Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method protected static getData(ILandroid/content/Context;)Ljava/util/List;
    .locals 4
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
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    const v1, 0x7f080149

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008a

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 92
    const v1, 0x7f080143

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020086

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 95
    const v1, 0x7f080145

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008d

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 98
    sget-boolean v1, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->mAllowAttachAudio:Z

    if-eqz v1, :cond_0

    .line 99
    const v1, 0x7f080147

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020088

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 103
    :cond_0
    const v1, 0x7f080144

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020083

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 106
    const v1, 0x7f080146

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 109
    const v1, 0x7f080148

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008b

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 118
    return-object v0
.end method

.method protected static getData(ILandroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .parameter "mode"
    .parameter "context"
    .parameter "toReplaceMedia"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    if-nez p0, :cond_3

    .line 130
    if-nez p2, :cond_0

    .line 131
    const v1, 0x7f08014a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008c

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 134
    :cond_0
    const v1, 0x7f080143

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020086

    invoke-static {v0, v1, v2, v5}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 137
    const v1, 0x7f080145

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-static {v0, v1, v2, v6}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 140
    sget-boolean v1, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->mAllowAttachAudio:Z

    if-eqz v1, :cond_1

    .line 141
    const v1, 0x7f080147

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020088

    invoke-static {v0, v1, v2, v8}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 145
    :cond_1
    const v1, 0x7f080144

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020083

    invoke-static {v0, v1, v2, v4}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 148
    const v1, 0x7f080146

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    invoke-static {v0, v1, v2, v7}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 151
    const v1, 0x7f080148

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008b

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 199
    :cond_2
    :goto_0
    return-object v0

    .line 155
    :cond_3
    if-ne p0, v4, :cond_2

    .line 156
    if-nez p2, :cond_4

    .line 157
    const v1, 0x7f08014b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008c

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 161
    :cond_4
    if-eqz p2, :cond_2

    .line 162
    const v1, 0x7f080143

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020086

    invoke-static {v0, v1, v2, v5}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 165
    const v1, 0x7f080145

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008d

    invoke-static {v0, v1, v2, v6}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 168
    sget-boolean v1, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->mAllowAttachAudio:Z

    if-eqz v1, :cond_5

    .line 169
    const v1, 0x7f080147

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020088

    invoke-static {v0, v1, v2, v8}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 173
    :cond_5
    const v1, 0x7f080144

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020083

    invoke-static {v0, v1, v2, v4}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 176
    const v1, 0x7f080146

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020084

    invoke-static {v0, v1, v2, v7}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 179
    const v1, 0x7f080148

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02008b

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2
    .parameter "whichButton"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;

    .line 82
    .local v0, item:Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;
    invoke-virtual {v0}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v1

    return v1
.end method

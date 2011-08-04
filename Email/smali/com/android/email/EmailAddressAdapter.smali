.class public Lcom/android/email/EmailAddressAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EmailAddressAdapter.java"


# static fields
.field protected static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private BcakupOfSearchedString:Ljava/lang/String;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 67
    iput-object p1, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 83
    const v2, 0x7f0700a6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x7f070160

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, text2:Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/email/EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 75
    :cond_0
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, address:Ljava/lang/String;
    new-instance v2, Lcom/android/email/mail/Address;

    iget-object v3, p0, Lcom/android/email/EmailAddressAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/email/mail/Address;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/email/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getBcakupOfSearchedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->BcakupOfSearchedString:Ljava/lang/String;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p1, :cond_1

    const-string v0, ""

    move-object v7, v0

    .line 92
    .local v7, filter:Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/email/EmailAddressAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v5, "times_contacted DESC, display_name"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 100
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 102
    :cond_0
    return-object v6

    .line 91
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #filter:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0
.end method

.method public setAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 109
    return-void
.end method

.method public setBcakupOfSearchedString(Ljava/lang/String;)V
    .locals 0
    .parameter "bcakupOfSearchedString"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/email/EmailAddressAdapter;->BcakupOfSearchedString:Ljava/lang/String;

    .line 55
    return-void
.end method

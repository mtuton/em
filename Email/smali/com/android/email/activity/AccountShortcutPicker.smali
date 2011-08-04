.class public Lcom/android/email/activity/AccountShortcutPicker;
.super Landroid/app/ListActivity;
.source "AccountShortcutPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountShortcutPicker$1;,
        Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;
    }
.end annotation


# static fields
.field private static final sFromColumns:[Ljava/lang/String;


# instance fields
.field private final sToIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountShortcutPicker;->sFromColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->sToIds:[I

    .line 100
    return-void

    .line 54
    :array_0
    .array-data 0x4
        0x49t 0x0t 0x7t 0x7ft
        0x4at 0x0t 0x7t 0x7ft
        0x4bt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private setupShortcut(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 160
    iget-wide v3, p1, Lcom/android/email/provider/EmailContent$Account;->mId:J

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/email/activity/MessageList;->actionHandleAccountUriIntent(Landroid/content/Context;JI)Landroid/content/Intent;

    move-result-object v2

    .line 165
    .local v2, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 167
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const v3, 0x7f0200b2

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 169
    .local v0, iconResource:Landroid/os/Parcelable;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/AccountShortcutPicker;->setResult(ILandroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 91
    :goto_0
    return-void

    .line 73
    :cond_0
    sget-object v1, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/AccountShortcutPicker;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 77
    .local v3, c:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    goto :goto_0

    .line 82
    :cond_1
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountShortcutPicker;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 84
    .local v6, listView:Landroid/widget/ListView;
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 86
    const v1, 0x7f070047

    invoke-virtual {p0, v1}, Lcom/android/email/activity/AccountShortcutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 88
    new-instance v0, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;

    const v2, 0x7f03000c

    sget-object v4, Lcom/android/email/activity/AccountShortcutPicker;->sFromColumns:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/AccountShortcutPicker;->sToIds:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 90
    .local v0, a:Lcom/android/email/activity/AccountShortcutPicker$AccountsAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 95
    .local v1, cursor:Landroid/database/Cursor;
    new-instance v2, Lcom/android/email/provider/EmailContent$Account;

    invoke-direct {v2}, Lcom/android/email/provider/EmailContent$Account;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/email/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 96
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-direct {p0, v0}, Lcom/android/email/activity/AccountShortcutPicker;->setupShortcut(Lcom/android/email/provider/EmailContent$Account;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 98
    return-void
.end method

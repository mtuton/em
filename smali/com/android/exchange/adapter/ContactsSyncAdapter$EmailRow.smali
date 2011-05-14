.class Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"

# interfaces
.implements Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmailRow"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field email:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "_email"

    .prologue
    const-string v3, ""

    .line 271
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 274
    .local v1, tokens:[Landroid/text/util/Rfc822Token;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 275
    const-string v2, ""

    iput-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->email:Ljava/lang/String;

    .line 276
    const-string v2, ""

    iput-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->displayName:Ljava/lang/String;

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 279
    .local v0, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->email:Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->displayName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 285
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->email:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 286
    const-string v0, "data4"

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 287
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;->email:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

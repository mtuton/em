.class public Lcom/android/exchange/PoliciesMultiplexer;
.super Ljava/lang/Object;
.source "PoliciesMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/exchange/PoliciesMultiplexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/exchange/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getAllPolicies()[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    .locals 15

    .prologue
    .line 97
    sget-object v1, Lcom/android/exchange/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    const-string v2, "getAllPolicies"

    invoke-static {v1, v2}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/android/exchange/PoliciesMultiplexer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, mCResolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 100
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 166
    .end local v0           #mCResolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .line 104
    .restart local v0       #mCResolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    new-instance v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    invoke-virtual {v1, v8}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Policies;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .line 106
    .local v14, policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v2, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    const-string v2, "Boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RequireSignedSMIMEAlgorithm"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    :cond_1
    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    const-string v2, "Boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RequireEncryptionSMIMEAlgorithm"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    :cond_2
    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    const-string v2, "Boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 116
    .end local v14           #policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 117
    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 120
    const/4 v7, 0x0

    .line 122
    .local v7, array:[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v12, noPasswordAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 129
    .end local v0           #mCResolver:Landroid/content/ContentResolver;
    .local v6, accountsPolicies:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;>;"
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 130
    new-instance v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v1}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    invoke-virtual {v1, v8}, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Policies;

    move-result-object v14

    check-cast v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .line 134
    .restart local v14       #policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v2, "PasswordMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 135
    iget-wide v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_4
    iget-wide v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    iget-wide v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_5
    iget-wide v1, v14, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    .end local v14           #policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 153
    .local v11, id:Ljava/lang/Long;
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/PoliciesMultiplexer;->removePasswordPolicies(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 157
    .end local v11           #id:Ljava/lang/Long;
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v9, finalPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 160
    .local v13, policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 164
    .end local v13           #policies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    :cond_8
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .end local v7           #array:[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    check-cast v7, [Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .restart local v7       #array:[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    move-object v1, v7

    .line 166
    goto/16 :goto_0
.end method

.method private getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, res:Ljava/lang/Object;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 82
    const-string v1, "Integer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 88
    .end local v0           #res:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 84
    .restart local v0       #res:Ljava/lang/Object;
    :cond_1
    const-string v1, "Boolean"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, res:Ljava/lang/Boolean;
    goto :goto_0
.end method

.method private removePasswordPolicies(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, aPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .line 176
    .local v1, policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    iget-object v3, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    const-string v4, "PasswordMode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    sget-object v3, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    iget-object v4, v1, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v1           #policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 184
    return-void
.end method


# virtual methods
.method public computeAggregatePolicy()Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/exchange/PoliciesMultiplexer;->getAllPolicies()[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    move-result-object v7

    .line 42
    .local v7, policies:[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    sget-object v12, Lcom/android/exchange/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computeAggregatePolicy: grouping policies by name. policies.length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v3, hashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;>;"
    move-object v0, v7

    .local v0, arr$:[Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v8, v0, v4

    .line 45
    .local v8, policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    iget-object v12, v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 46
    .local v1, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .restart local v1       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    iget-object v12, v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v1           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    .end local v8           #policy:Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v10, strongestPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 56
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 57
    .local v2, groupedPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 58
    const/4 v9, 0x0

    .line 59
    .local v9, size:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 60
    const/4 v12, 0x1

    sub-int v12, v9, v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v2           #groupedPolicies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #size:I
    :cond_3
    sget-object v12, Lcom/android/exchange/PoliciesMultiplexer;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "computeAggregatePolicy: applying strongest policies. strongestPolicies.size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v11, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;

    .line 67
    .local v8, policy:Lcom/android/email/provider/EmailContent$Policies;
    iget-object v12, v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mName:Ljava/lang/String;

    iget-object v13, v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mType:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/exchange/PoliciesMultiplexer$PoliciesComparable;->mValue:Ljava/lang/String;

    invoke-direct {p0, v13, v14}, Lcom/android/exchange/PoliciesMultiplexer;->getConcreteObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 70
    .end local v8           #policy:Lcom/android/email/provider/EmailContent$Policies;
    :cond_4
    return-object v11
.end method

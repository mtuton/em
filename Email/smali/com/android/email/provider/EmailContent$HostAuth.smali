.class public final Lcom/android/email/provider/EmailContent$HostAuth;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$HostAuthColumns;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostAuth"
.end annotation


# static fields
.field public static final CONTENT_ACCOUNT_KEY_COLUMN:I = 0x8

.field public static final CONTENT_ADDRESS_COLUMN:I = 0x2

.field public static final CONTENT_DOMAIN_COLUMN:I = 0x7

.field public static final CONTENT_FLAGS_COLUMN:I = 0x4

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOGIN_COLUMN:I = 0x5

.field public static final CONTENT_PASSWORD_COLUMN:I = 0x6

.field public static final CONTENT_PORT_COLUMN:I = 0x3

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_PROTOCOL_COLUMN:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$HostAuth;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTHENTICATE:I = 0x4

.field public static final FLAG_SSL:I = 0x1

.field public static final FLAG_TLS:I = 0x2

.field public static final FLAG_TRUST_ALL_CERTIFICATES:I = 0x8

.field public static final TABLE_NAME:Ljava/lang/String; = "HostAuth"


# instance fields
.field public mAccountKey:J

.field public mAddress:Ljava/lang/String;

.field public mDomain:Ljava/lang/String;

.field public mFlags:I

.field public mLogin:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mProtocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    .line 3345
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "login"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "domain"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 3548
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3355
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3356
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 3359
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 3360
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 3578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3579
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 3580
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 3581
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 3582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 3583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 3584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 3587
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 3588
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    .line 3589
    return-void
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3369
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3370
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3374
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3375
    const-class v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$HostAuth;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3542
    const/4 v0, 0x0

    return v0
.end method

.method public getStoreUri()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-string v4, ""

    .line 3422
    iget v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0xb

    sparse-switch v1, :sswitch_data_0

    .line 3436
    const-string v9, ""

    .line 3439
    .local v9, security:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 3440
    .local v2, userInfo:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 3441
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 3442
    .local v11, trimUser:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 3443
    .local v10, trimPassword:Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3445
    .end local v10           #trimPassword:Ljava/lang/String;
    .end local v11           #trimUser:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 3446
    .local v3, address:Ljava/lang/String;
    :goto_3
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 3450
    .local v5, path:Ljava/lang/String;
    :goto_4
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3460
    .end local v0           #uri:Ljava/net/URI;
    :goto_5
    return-object v1

    .line 3424
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v9           #security:Ljava/lang/String;
    :sswitch_0
    const-string v9, "+ssl+"

    .line 3425
    .restart local v9       #security:Ljava/lang/String;
    goto :goto_0

    .line 3427
    .end local v9           #security:Ljava/lang/String;
    :sswitch_1
    const-string v9, "+ssl+trustallcerts"

    .line 3428
    .restart local v9       #security:Ljava/lang/String;
    goto :goto_0

    .line 3430
    .end local v9           #security:Ljava/lang/String;
    :sswitch_2
    const-string v9, "+tls+"

    .line 3431
    .restart local v9       #security:Ljava/lang/String;
    goto/16 :goto_0

    .line 3433
    .end local v9           #security:Ljava/lang/String;
    :sswitch_3
    const-string v9, "+tls+trustallcerts"

    .line 3434
    .restart local v9       #security:Ljava/lang/String;
    goto/16 :goto_0

    .line 3441
    .restart local v2       #userInfo:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    move-object v11, v4

    goto :goto_1

    .line 3442
    .restart local v11       #trimUser:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    move-object v10, v4

    goto :goto_2

    .end local v11           #trimUser:Ljava/lang/String;
    :cond_3
    move-object v3, v12

    .line 3445
    goto :goto_3

    .restart local v3       #address:Ljava/lang/String;
    :cond_4
    move-object v5, v12

    .line 3446
    goto :goto_4

    .line 3459
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/net/URISyntaxException;
    move-object v1, v12

    .line 3460
    goto :goto_5

    .line 3422
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$HostAuth;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3387
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 3388
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 3389
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 3390
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 3391
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 3392
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3393
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3394
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 3395
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 3396
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    .line 3397
    return-object p0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3317
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$HostAuth;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    return-object v0
.end method

.method public setStoreUri(Ljava/lang/String;)V
    .locals 13
    .parameter "uriString"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 3472
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 3473
    .local v4, uri:Ljava/net/URI;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3474
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 3475
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3476
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3477
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 3478
    .local v6, userInfoParts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 3479
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3480
    array-length v7, v6

    if-le v7, v10, :cond_0

    .line 3481
    const/4 v7, 0x1

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 3486
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3487
    .local v2, schemeParts:[Ljava/lang/String;
    array-length v7, v2

    if-lt v7, v10, :cond_5

    const/4 v7, 0x0

    aget-object v7, v2, v7

    :goto_0
    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 3488
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0xc

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3489
    const/4 v3, 0x0

    .line 3490
    .local v3, ssl:Z
    array-length v7, v2

    if-lt v7, v11, :cond_2

    .line 3491
    const/4 v7, 0x1

    aget-object v0, v2, v7

    .line 3492
    .local v0, part1:Ljava/lang/String;
    const-string v7, "ssl"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3493
    const/4 v3, 0x1

    .line 3494
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3498
    :cond_1
    :goto_1
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_2

    .line 3499
    const/4 v7, 0x2

    aget-object v1, v2, v7

    .line 3500
    .local v1, part2:Ljava/lang/String;
    const-string v7, "trustallcerts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3501
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 3506
    .end local v0           #part1:Ljava/lang/String;
    .end local v1           #part2:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 3507
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v7

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 3508
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 3513
    const-string v7, "pop3"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3514
    if-eqz v3, :cond_7

    const/16 v7, 0x3e3

    :goto_2
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 3524
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 3525
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 3536
    :cond_4
    return-void

    .end local v3           #ssl:Z
    :cond_5
    move-object v7, v12

    .line 3487
    goto :goto_0

    .line 3495
    .restart local v0       #part1:Ljava/lang/String;
    .restart local v3       #ssl:Z
    :cond_6
    const-string v7, "tls"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3496
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3529
    .end local v0           #part1:Ljava/lang/String;
    .end local v2           #schemeParts:[Ljava/lang/String;
    .end local v3           #ssl:Z
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 3533
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 3514
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #schemeParts:[Ljava/lang/String;
    .restart local v3       #ssl:Z
    .restart local v4       #uri:Ljava/net/URI;
    :cond_7
    const/16 v7, 0x6e

    goto :goto_2

    .line 3515
    :cond_8
    :try_start_1
    const-string v7, "imap"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3516
    if-eqz v3, :cond_9

    const/16 v7, 0x3e1

    :goto_4
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_3

    :cond_9
    const/16 v7, 0x8f

    goto :goto_4

    .line 3517
    :cond_a
    const-string v7, "eas"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 3518
    if-eqz v3, :cond_b

    const/16 v7, 0x1bb

    :goto_5
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_3

    :cond_b
    const/16 v7, 0x50

    goto :goto_5

    .line 3519
    :cond_c
    const-string v7, "smtp"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3520
    if-eqz v3, :cond_d

    const/16 v7, 0x1d1

    :goto_6
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_d
    const/16 v7, 0x24b

    goto :goto_6
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 3402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3403
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    const-string v1, "port"

    iget v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3406
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3407
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3409
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3411
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3596
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 3564
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3565
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3566
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3567
    iget v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3568
    iget v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3569
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3570
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3571
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3572
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3573
    return-void
.end method

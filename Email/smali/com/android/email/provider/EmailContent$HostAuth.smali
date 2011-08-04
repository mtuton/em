.class public final Lcom/android/email/provider/EmailContent$HostAuth;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/email/provider/EmailContent$HostAuthColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HostAuth"
.end annotation


# static fields
.field public static final CONTENT_PROJECTION:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$HostAuth;",
            ">;"
        }
    .end annotation
.end field


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
    .line 3997
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

    .line 4023
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

    .line 4228
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$HostAuth$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4033
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 4034
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 4037
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 4038
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 4258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 4259
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 4260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 4261
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 4262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 4263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 4264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 4266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 4267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 4268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    .line 4269
    return-void
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$HostAuth;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 4047
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4048
    if-nez p0, :cond_0

    move-object v0, v3

    .line 4060
    :goto_0
    return-object v0

    .line 4050
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4054
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4055
    const-class v1, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-static {v0, v1}, Lcom/android/email/provider/EmailContent$HostAuth;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    check-cast p0, Lcom/android/email/provider/EmailContent$HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4060
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 4222
    const/4 v0, 0x0

    return v0
.end method

.method public getStoreUri()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-string v4, ""

    .line 4102
    iget v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0xb

    sparse-switch v1, :sswitch_data_0

    .line 4116
    const-string v9, ""

    .line 4119
    .local v9, security:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 4120
    .local v2, userInfo:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 4121
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 4122
    .local v11, trimUser:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 4123
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

    .line 4125
    .end local v10           #trimPassword:Ljava/lang/String;
    .end local v11           #trimUser:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 4126
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

    .line 4130
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

    .line 4138
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4140
    .end local v0           #uri:Ljava/net/URI;
    :goto_5
    return-object v1

    .line 4104
    .end local v2           #userInfo:Ljava/lang/String;
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #path:Ljava/lang/String;
    .end local v9           #security:Ljava/lang/String;
    :sswitch_0
    const-string v9, "+ssl+"

    .line 4105
    .restart local v9       #security:Ljava/lang/String;
    goto :goto_0

    .line 4107
    .end local v9           #security:Ljava/lang/String;
    :sswitch_1
    const-string v9, "+ssl+trustallcerts"

    .line 4108
    .restart local v9       #security:Ljava/lang/String;
    goto :goto_0

    .line 4110
    .end local v9           #security:Ljava/lang/String;
    :sswitch_2
    const-string v9, "+tls+"

    .line 4111
    .restart local v9       #security:Ljava/lang/String;
    goto/16 :goto_0

    .line 4113
    .end local v9           #security:Ljava/lang/String;
    :sswitch_3
    const-string v9, "+tls+trustallcerts"

    .line 4114
    .restart local v9       #security:Ljava/lang/String;
    goto/16 :goto_0

    .line 4121
    .restart local v2       #userInfo:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    move-object v11, v4

    goto :goto_1

    .line 4122
    .restart local v11       #trimUser:Ljava/lang/String;
    :cond_2
    const-string v1, ""

    move-object v10, v4

    goto :goto_2

    .end local v11           #trimUser:Ljava/lang/String;
    :cond_3
    move-object v3, v12

    .line 4125
    goto :goto_3

    .restart local v3       #address:Ljava/lang/String;
    :cond_4
    move-object v5, v12

    .line 4126
    goto :goto_4

    .line 4139
    .restart local v5       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/net/URISyntaxException;
    move-object v1, v12

    .line 4140
    goto :goto_5

    .line 4102
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
    .line 4067
    sget-object v0, Lcom/android/email/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mBaseUri:Landroid/net/Uri;

    .line 4068
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    .line 4069
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 4070
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 4071
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 4072
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4073
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 4074
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 4075
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 4076
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    .line 4077
    return-object p0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3995
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

    .line 4152
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4153
    .local v4, uri:Ljava/net/URI;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 4154
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 4155
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0x5

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4156
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4157
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 4158
    .local v6, userInfoParts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 4159
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4160
    array-length v7, v6

    if-le v7, v10, :cond_0

    .line 4161
    const/4 v7, 0x1

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 4166
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4167
    .local v2, schemeParts:[Ljava/lang/String;
    array-length v7, v2

    if-lt v7, v10, :cond_5

    const/4 v7, 0x0

    aget-object v7, v2, v7

    :goto_0
    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 4168
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v7, v7, -0xc

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4169
    const/4 v3, 0x0

    .line 4170
    .local v3, ssl:Z
    array-length v7, v2

    if-lt v7, v11, :cond_2

    .line 4171
    const/4 v7, 0x1

    aget-object v0, v2, v7

    .line 4172
    .local v0, part1:Ljava/lang/String;
    const-string v7, "ssl"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4173
    const/4 v3, 0x1

    .line 4174
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4178
    :cond_1
    :goto_1
    array-length v7, v2

    const/4 v8, 0x3

    if-lt v7, v8, :cond_2

    .line 4179
    const/4 v7, 0x2

    aget-object v1, v2, v7

    .line 4180
    .local v1, part2:Ljava/lang/String;
    const-string v7, "trustallcerts"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4181
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 4186
    .end local v0           #part1:Ljava/lang/String;
    .end local v1           #part2:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 4187
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v7

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 4188
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    .line 4193
    const-string v7, "pop3"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4194
    if-eqz v3, :cond_7

    const/16 v7, 0x3e3

    :goto_2
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    .line 4204
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

    .line 4205
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 4216
    :cond_4
    return-void

    .end local v3           #ssl:Z
    :cond_5
    move-object v7, v12

    .line 4167
    goto :goto_0

    .line 4175
    .restart local v0       #part1:Ljava/lang/String;
    .restart local v3       #ssl:Z
    :cond_6
    const-string v7, "tls"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4176
    iget v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4209
    .end local v0           #part1:Ljava/lang/String;
    .end local v2           #schemeParts:[Ljava/lang/String;
    .end local v3           #ssl:Z
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 4213
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 4194
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #schemeParts:[Ljava/lang/String;
    .restart local v3       #ssl:Z
    .restart local v4       #uri:Ljava/net/URI;
    :cond_7
    const/16 v7, 0x6e

    goto :goto_2

    .line 4195
    :cond_8
    :try_start_1
    const-string v7, "imap"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4196
    if-eqz v3, :cond_9

    const/16 v7, 0x3e1

    :goto_4
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_3

    :cond_9
    const/16 v7, 0x8f

    goto :goto_4

    .line 4197
    :cond_a
    const-string v7, "eas"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4198
    if-eqz v3, :cond_b

    const/16 v7, 0x1bb

    :goto_5
    iput v7, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    goto :goto_3

    :cond_b
    const/16 v7, 0x50

    goto :goto_5

    .line 4199
    :cond_c
    const-string v7, "smtp"

    iget-object v8, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4200
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
    .line 4082
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4083
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "protocol"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    const-string v1, "address"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4085
    const-string v1, "port"

    iget v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4086
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4087
    const-string v1, "login"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    const-string v1, "password"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    const-string v1, "domain"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4091
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4276
    invoke-virtual {p0}, Lcom/android/email/provider/EmailContent$HostAuth;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 4244
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4245
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4246
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4247
    iget v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4248
    iget v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4249
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4250
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4251
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4252
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4253
    return-void
.end method

.class public Lcom/android/email/smime/UriSchemaUtils;
.super Ljava/lang/Object;
.source "UriSchemaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/smime/UriSchemaUtils$UtilFile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "UriSchemaUtils"

    sput-object v0, Lcom/android/email/smime/UriSchemaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

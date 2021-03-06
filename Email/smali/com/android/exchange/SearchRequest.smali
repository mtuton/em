.class public abstract Lcom/android/exchange/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/SearchRequest$2;,
        Lcom/android/exchange/SearchRequest$Builder;,
        Lcom/android/exchange/SearchRequest$SearchRequestImpl;,
        Lcom/android/exchange/SearchRequest$OptionsMIMESupport;,
        Lcom/android/exchange/SearchRequest$BodyPreferenceType;,
        Lcom/android/exchange/SearchRequest$QueryClass;,
        Lcom/android/exchange/SearchRequest$StoreName;
    }
.end annotation


# static fields
.field private static final BODY_PREFERENCE_TYPE_HTML:Ljava/lang/String; = "2"

.field private static final BODY_PREFERENCE_TYPE_MIME:Ljava/lang/String; = "4"

.field private static final BODY_PREFERENCE_TYPE_PLAIN_TEXT:Ljava/lang/String; = "1"

.field private static final BODY_PREFERENCE_TYPE_RTF:Ljava/lang/String; = "3"

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exchange/SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OPTIONS_BODY_PREFERENCE_TRUNCATION_SIZE:I = 0x400

.field public static final NO_OPTIONS_BODY_PREFERENCE_TRUNCATION_SIZE:I = -0x1

.field private static final QUERY_CLASS_EMAIL:Ljava/lang/String; = "Email"

.field public static final STORE_NAME_GAL:Ljava/lang/String; = "GAL"

.field private static final STORE_NAME_MAILBOX:Ljava/lang/String; = "Mailbox"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/android/exchange/SearchRequest$1;

    invoke-direct {v0}, Lcom/android/exchange/SearchRequest$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SearchRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/SearchRequest$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/exchange/SearchRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccountId()J
.end method

.method public abstract getOptionsBodyPreferenceTruncationSize()Ljava/lang/String;
.end method

.method public abstract getOptionsBodyPreferenceType()Ljava/lang/String;
.end method

.method public abstract getOptionsDeepTraversal()Z
.end method

.method public abstract getOptionsOptionsMIMESupport()Ljava/lang/String;
.end method

.method public abstract getOptionsRange()Ljava/lang/String;
.end method

.method public abstract getOptionsRebuildResults()Z
.end method

.method public abstract getQueryClass()Ljava/lang/String;
.end method

.method public abstract getQueryCollectionIds()[J
.end method

.method public abstract getQueryFreeText()Ljava/lang/String;
.end method

.method public abstract getQueryGreaterThan()Ljava/lang/String;
.end method

.method public abstract getQueryLessThan()Ljava/lang/String;
.end method

.method public abstract getQueryText()Ljava/lang/String;
.end method

.method public abstract getStoreName()Ljava/lang/String;
.end method

.class public final enum Lcom/android/email/mail/Folder$FolderType;
.super Ljava/lang/Enum;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FolderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/mail/Folder$FolderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/mail/Folder$FolderType;

.field public static final enum HOLDS_FOLDERS:Lcom/android/email/mail/Folder$FolderType;

.field public static final enum HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/android/email/mail/Folder$FolderType;

    const-string v1, "HOLDS_FOLDERS"

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/Folder$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/mail/Folder$FolderType;->HOLDS_FOLDERS:Lcom/android/email/mail/Folder$FolderType;

    new-instance v0, Lcom/android/email/mail/Folder$FolderType;

    const-string v1, "HOLDS_MESSAGES"

    invoke-direct {v0, v1, v3}, Lcom/android/email/mail/Folder$FolderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/email/mail/Folder$FolderType;

    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_FOLDERS:Lcom/android/email/mail/Folder$FolderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/email/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/email/mail/Folder$FolderType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/mail/Folder$FolderType;->$VALUES:[Lcom/android/email/mail/Folder$FolderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/mail/Folder$FolderType;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/android/email/mail/Folder$FolderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/mail/Folder$FolderType;

    return-object p0
.end method

.method public static final values()[Lcom/android/email/mail/Folder$FolderType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/email/mail/Folder$FolderType;->$VALUES:[Lcom/android/email/mail/Folder$FolderType;

    invoke-virtual {v0}, [Lcom/android/email/mail/Folder$FolderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/mail/Folder$FolderType;

    return-object v0
.end method

.class public final enum Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
.super Ljava/lang/Enum;
.source "EmailContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent$FollowupFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FollowupFlagDefaultState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum CLEAR:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum MARK_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum NEXT_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum NO_DATE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum THIS_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum TODAY:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

.field public static final enum TOMORROW:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1167
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "TODAY"

    invoke-direct {v0, v1, v3}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->TODAY:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1168
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "TOMORROW"

    invoke-direct {v0, v1, v4}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->TOMORROW:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1169
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "THIS_WEEK"

    invoke-direct {v0, v1, v5}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->THIS_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1170
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "NEXT_WEEK"

    invoke-direct {v0, v1, v6}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NEXT_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1171
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "NO_DATE"

    invoke-direct {v0, v1, v7}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NO_DATE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1172
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "MARK_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->MARK_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1173
    new-instance v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    const-string v1, "CLEAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->CLEAR:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    .line 1166
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->TODAY:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->TOMORROW:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->THIS_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NEXT_WEEK:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->NO_DATE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->MARK_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->CLEAR:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->$VALUES:[Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

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
    .line 1166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    .locals 1
    .parameter "name"

    .prologue
    .line 1166
    const-class v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    return-object p0
.end method

.method public static final values()[Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;
    .locals 1

    .prologue
    .line 1166
    sget-object v0, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->$VALUES:[Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    invoke-virtual {v0}, [Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagDefaultState;

    return-object v0
.end method

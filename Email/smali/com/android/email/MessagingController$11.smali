.class Lcom/android/email/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/email/mail/Folder$MessageUpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMoveToTargetbox(Lcom/android/email/mail/Store;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/provider/EmailContent$Mailbox;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

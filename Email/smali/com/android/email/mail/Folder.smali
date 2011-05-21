.class public abstract Lcom/android/email/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/Folder$MessageUpdateCallbacks;,
        Lcom/android/email/mail/Folder$PersistentDataCallbacks;,
        Lcom/android/email/mail/Folder$FolderRole;,
        Lcom/android/email/mail/Folder$FolderType;,
        Lcom/android/email/mail/Folder$OpenMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method


# virtual methods
.method public abstract appendMessages([Lcom/android/email/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract canCreate(Lcom/android/email/mail/Folder$FolderType;)Z
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract create(Lcom/android/email/mail/Folder$FolderType;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(IILcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(ILjava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getMessages([Lcom/android/email/mail/Flag;[Lcom/android/email/mail/Flag;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 2
    .parameter "setFlags"
    .parameter "clearFlags"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMessages([Ljava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMode()Lcom/android/email/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPermanentFlags()[Lcom/android/email/mail/Flag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getRole()Lcom/android/email/mail/Folder$FolderRole;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/android/email/mail/Folder$FolderRole;->UNKNOWN:Lcom/android/email/mail/Folder$FolderRole;

    return-object v0
.end method

.method public abstract getUnreadMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public localFolderSetupComplete(Lcom/android/email/mail/Folder;)V
    .locals 0
    .parameter "localFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public abstract open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

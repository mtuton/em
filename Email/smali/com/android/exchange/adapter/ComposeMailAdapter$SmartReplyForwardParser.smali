.class public Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ComposeMailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ComposeMailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartReplyForwardParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ComposeMailAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .locals 0
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 136
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public parse()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 162
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$000(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    invoke-static {v2}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$100(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x547

    move v0, v2

    .line 165
    .local v0, startTag:I
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->nextTag(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 166
    new-instance v2, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2

    .line 162
    .end local v0           #startTag:I
    :cond_0
    const/16 v2, 0x546

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x545

    move v0, v2

    goto :goto_0

    .line 168
    .restart local v0       #startTag:I
    :cond_2
    const/4 v1, 0x0

    .line 169
    .local v1, status:I
    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 171
    const/4 v1, 0x1

    .line 172
    iget v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->tag:I

    const/16 v3, 0x552

    if-ne v2, v3, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->getValueInt()I

    move-result v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->log(Ljava/lang/String;)V

    .line 175
    sparse-switch v1, :sswitch_data_0

    .line 193
    :goto_2
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x190

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_1

    .line 179
    :sswitch_0
    const-string v2, "SmartReplyForwardParser"

    const-string v3, "Status code 129 received, to block the device"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v2, Lcom/android/email/mail/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f0802cb

    invoke-direct {v2, v3, v4}, Lcom/android/email/mail/DeviceAccessException;-><init>(II)V

    throw v2

    .line 183
    :sswitch_1
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_1

    .line 188
    :sswitch_2
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1c1

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    .line 191
    :sswitch_3
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_2

    .line 197
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpCode mapped for 14.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    invoke-static {v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$200(Lcom/android/exchange/adapter/ComposeMailAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->log(Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x1

    return v2

    .line 175
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6e -> :sswitch_3
        0x78 -> :sswitch_0
        0x81 -> :sswitch_0
        0x8e -> :sswitch_2
        0x8f -> :sswitch_2
        0x90 -> :sswitch_2
    .end sparse-switch
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public wipe()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

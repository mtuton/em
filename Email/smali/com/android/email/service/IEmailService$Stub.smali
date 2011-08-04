.class public abstract Lcom/android/email/service/IEmailService$Stub;
.super Landroid/os/Binder;
.source "IEmailService.java"

# interfaces
.implements Lcom/android/email/service/IEmailService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/IEmailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/IEmailService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.android.email.service.IEmailService"

    invoke-virtual {p0, p0, v0}, Lcom/android/email/service/IEmailService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/email/service/IEmailService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    .line 28
    :cond_0
    const-string v1, "com.android.email.service.IEmailService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/email/service/IEmailService;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/email/service/IEmailService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 32
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/email/service/IEmailService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/email/service/IEmailService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 305
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 44
    :sswitch_0
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v5, 0x1

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 61
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v11, v5

    .line 63
    .local v11, _arg5:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move v12, v5

    .local v12, _arg6:Z
    :goto_2
    move-object/from16 v5, p0

    .line 64
    invoke-virtual/range {v5 .. v12}, Lcom/android/email/service/IEmailService$Stub;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v28

    .line 65
    .local v28, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v5, 0x1

    goto :goto_0

    .line 61
    .end local v11           #_arg5:Z
    .end local v12           #_arg6:Z
    .end local v28           #_result:I
    :cond_0
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1

    .line 63
    .restart local v11       #_arg5:Z
    :cond_1
    const/4 v5, 0x0

    move v12, v5

    goto :goto_2

    .line 71
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:Z
    :sswitch_2
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 74
    .local v22, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->startSync(J)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    .end local v22           #_arg0:J
    :sswitch_3
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 83
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->stopSync(J)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v5, 0x1

    goto :goto_0

    .line 89
    .end local v22           #_arg0:J
    :sswitch_4
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 92
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->loadMore(J)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 98
    .end local v22           #_arg0:J
    :sswitch_5
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 102
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 104
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailService$Stub;->loadAttachment(JLjava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 111
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v22           #_arg0:J
    :sswitch_6
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 114
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->emptyTrash(J)V

    .line 115
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 120
    .end local v22           #_arg0:J
    :sswitch_7
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 123
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->updateFolderList(J)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 129
    .end local v22           #_arg0:J
    :sswitch_8
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 133
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService$Stub;->createFolder(JLjava/lang/String;)Z

    move-result v28

    .line 135
    .local v28, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v28, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 136
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 141
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v22           #_arg0:J
    .end local v28           #_result:Z
    :sswitch_9
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 145
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService$Stub;->deleteFolder(JLjava/lang/String;)Z

    move-result v28

    .line 147
    .restart local v28       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v28, :cond_3

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 148
    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    .line 153
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v22           #_arg0:J
    .end local v28           #_result:Z
    :sswitch_a
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 157
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 159
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 160
    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailService$Stub;->renameFolder(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v28

    .line 161
    .restart local v28       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v28, :cond_4

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 162
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 167
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v22           #_arg0:J
    .end local v28           #_result:Z
    :sswitch_b
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/service/IEmailServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v6

    .line 170
    .local v6, _arg0:Lcom/android/email/service/IEmailServiceCallback;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/service/IEmailService$Stub;->setCallback(Lcom/android/email/service/IEmailServiceCallback;)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 176
    .end local v6           #_arg0:Lcom/android/email/service/IEmailServiceCallback;
    :sswitch_c
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 179
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/service/IEmailService$Stub;->setLogging(I)V

    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 185
    .end local v6           #_arg0:I
    :sswitch_d
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 188
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->hostChanged(J)V

    .line 189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 194
    .end local v22           #_arg0:J
    :sswitch_e
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 200
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move v9, v5

    .line 203
    .local v9, _arg3:Z
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/IEmailService$Stub;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v28

    .line 204
    .local v28, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v28, :cond_6

    .line 206
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 212
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 202
    .end local v9           #_arg3:Z
    .end local v28           #_result:Landroid/os/Bundle;
    :cond_5
    const/4 v5, 0x0

    move v9, v5

    goto :goto_6

    .line 210
    .restart local v9       #_arg3:Z
    .restart local v28       #_result:Landroid/os/Bundle;
    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 216
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Z
    .end local v28           #_result:Landroid/os/Bundle;
    :sswitch_f
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 220
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 221
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService$Stub;->sendMeetingResponse(JI)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 227
    .end local v7           #_arg1:I
    .end local v22           #_arg0:J
    :sswitch_10
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 231
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService$Stub;->sendRecoveryPassword(JLjava/lang/String;)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 238
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v22           #_arg0:J
    :sswitch_11
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 242
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    sget-object v5, Lcom/android/exchange/OoODataList;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exchange/OoODataList;

    .line 248
    .local v7, _arg1:Lcom/android/exchange/OoODataList;
    :goto_8
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/service/IEmailService$Stub;->OoOffice(JLcom/android/exchange/OoODataList;)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 246
    .end local v7           #_arg1:Lcom/android/exchange/OoODataList;
    :cond_7
    const/4 v7, 0x0

    .restart local v7       #_arg1:Lcom/android/exchange/OoODataList;
    goto :goto_8

    .line 254
    .end local v7           #_arg1:Lcom/android/exchange/OoODataList;
    .end local v22           #_arg0:J
    :sswitch_12
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v14

    .line 258
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 260
    .local v15, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 262
    .local v17, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .local v19, _arg3:J
    move-object/from16 v13, p0

    .line 263
    invoke-virtual/range {v13 .. v20}, Lcom/android/email/service/IEmailService$Stub;->MoveMessage(Ljava/util/List;JJJ)V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 269
    .end local v14           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #_arg1:J
    .end local v17           #_arg2:J
    .end local v19           #_arg3:J
    :sswitch_13
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 273
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .restart local v17       #_arg2:J
    move-object/from16 v21, p0

    move-object/from16 v24, v7

    move-wide/from16 v25, v17

    .line 276
    invoke-virtual/range {v21 .. v26}, Lcom/android/email/service/IEmailService$Stub;->folderCreate(JLjava/lang/String;J)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 282
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v17           #_arg2:J
    .end local v22           #_arg0:J
    :sswitch_14
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 285
    .restart local v22       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/IEmailService$Stub;->setDeviceInfo(J)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 291
    .end local v22           #_arg0:J
    :sswitch_15
    const-string v5, "com.android.email.service.IEmailService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 295
    .restart local v22       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 297
    .restart local v15       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 299
    .local v8, _arg2:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg3:I
    move-object/from16 v21, p0

    move-wide/from16 v24, v15

    move-object/from16 v26, v8

    move/from16 v27, v9

    .line 300
    invoke-virtual/range {v21 .. v27}, Lcom/android/email/service/IEmailService$Stub;->moveConversationAlways(JJ[BI)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

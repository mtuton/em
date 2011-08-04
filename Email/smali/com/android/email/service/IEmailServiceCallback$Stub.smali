.class public abstract Lcom/android/email/service/IEmailServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEmailServiceCallback.java"

# interfaces
.implements Lcom/android/email/service/IEmailServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/IEmailServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/IEmailServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.email.service.IEmailServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/email/service/IEmailServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/email/service/IEmailServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.android.email.service.IEmailServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/email/service/IEmailServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/email/service/IEmailServiceCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/email/service/IEmailServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/email/service/IEmailServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 189
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p3

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 51
    .local v3, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 53
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 54
    .local v7, _arg2:I
    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->syncMailboxListStatus(JII)V

    .line 55
    const/4 v2, 0x1

    goto :goto_0

    .line 59
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_2
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 63
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 65
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 66
    .restart local v7       #_arg2:I
    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 67
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_3
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 75
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 77
    .local v5, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 79
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg3:I
    move-object v2, p0

    .line 80
    invoke-virtual/range {v2 .. v8}, Lcom/android/email/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    .line 81
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v3           #_arg0:J
    .end local v5           #_arg1:J
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    :sswitch_4
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 89
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 93
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8       #_arg3:I
    move-object v9, p0

    move-wide v10, v3

    move-object v12, v5

    move v13, v7

    move v14, v8

    .line 94
    invoke-virtual/range {v9 .. v14}, Lcom/android/email/service/IEmailServiceCallback$Stub;->sendMessageStatus(JLjava/lang/String;II)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    .end local v3           #_arg0:J
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    :sswitch_5
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 103
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 105
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7       #_arg2:I
    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->loadMoreStatus(JII)V

    .line 107
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 111
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_6
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 115
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 116
    .restart local v5       #_arg1:I
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/email/service/IEmailServiceCallback$Stub;->moveItemStatus(JI)V

    .line 117
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 121
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    :sswitch_7
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 125
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 129
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .local v8, _arg3:Landroid/os/Bundle;
    :goto_1
    move-object v9, p0

    move-wide v10, v3

    move v12, v5

    move v13, v7

    move-object v14, v8

    .line 135
    invoke-virtual/range {v9 .. v14}, Lcom/android/email/service/IEmailServiceCallback$Stub;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 136
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 133
    .end local v8           #_arg3:Landroid/os/Bundle;
    :cond_0
    const/4 v8, 0x0

    .restart local v8       #_arg3:Landroid/os/Bundle;
    goto :goto_1

    .line 140
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    .end local v8           #_arg3:Landroid/os/Bundle;
    :sswitch_8
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    .local v3, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 146
    .local v5, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 147
    .restart local v7       #_arg2:I
    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->folderCommandStatus(IJI)V

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 152
    .end local v3           #_arg0:I
    .end local v5           #_arg1:J
    .end local v7           #_arg2:I
    :sswitch_9
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 156
    .local v3, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 158
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 159
    .restart local v7       #_arg2:I
    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->emptyTrashStatus(JII)V

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 164
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_a
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 168
    .restart local v3       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 170
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 171
    .restart local v7       #_arg2:I
    invoke-virtual {p0, v3, v4, v5, v7}, Lcom/android/email/service/IEmailServiceCallback$Stub;->setDeviceInfoStatus(JII)V

    .line 172
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 176
    .end local v3           #_arg0:J
    .end local v5           #_arg1:I
    .end local v7           #_arg2:I
    :sswitch_b
    const-string v2, "com.android.email.service.IEmailServiceCallback"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 180
    .local v3, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 182
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 185
    .local v8, _arg3:I
    invoke-virtual {p0, v3, v5, v7, v8}, Lcom/android/email/service/IEmailServiceCallback$Stub;->moveConvAlwaysStatus([BIII)V

    .line 186
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public Lcom/android/email/service/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mSpeechText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    .line 161
    new-instance v0, Lcom/android/email/service/TextToSpeechService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/TextToSpeechService$1;-><init>(Lcom/android/email/service/TextToSpeechService;)V

    iput-object v0, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/TextToSpeechService;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/service/TextToSpeechService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTts()V
    .locals 3

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v1, "New Message TTS"

    const-string v2, "########## TTS create failed !!!!! ##########"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_0
.end method

.method private speakNewMessageInfo()V
    .locals 4

    .prologue
    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    const-string v2, "New message tts ended"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 175
    iget-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 53
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 54
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    .line 58
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 101
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 104
    :cond_1
    const-string v0, "New Message TTS"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    .line 65
    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    .line 67
    iput p2, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    .line 70
    :try_start_0
    const-string v1, "TTS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    iget-boolean v1, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    if-eqz v1, :cond_1

    .line 79
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    .line 89
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, e1:Ljava/lang/Exception;
    const-string v1, "New message received"

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_0
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_1

    .line 84
    :cond_1
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 85
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    goto :goto_1

    .line 87
    :cond_2
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    .line 182
    return-void
.end method

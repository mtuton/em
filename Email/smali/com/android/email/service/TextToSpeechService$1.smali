.class Lcom/android/email/service/TextToSpeechService$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/TextToSpeechService;


# direct methods
.method constructor <init>(Lcom/android/email/service/TextToSpeechService;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-static {v0}, Lcom/android/email/service/TextToSpeechService;->access$000(Lcom/android/email/service/TextToSpeechService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 164
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService$1;->this$0:Lcom/android/email/service/TextToSpeechService;

    invoke-static {v0}, Lcom/android/email/service/TextToSpeechService;->access$100(Lcom/android/email/service/TextToSpeechService;)V

    .line 165
    return-void
.end method

.class public Lnet/pubnative/player/processor/VASTModelPostValidator;
.super Ljava/lang/Object;
.source "VASTModelPostValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lnet/pubnative/player/processor/VASTModelPostValidator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Lnet/pubnative/player/model/VASTModel;Lnet/pubnative/player/processor/VASTMediaPicker;)Z
    .locals 7
    .param p0, "model"    # Lnet/pubnative/player/model/VASTModel;
    .param p1, "mediaPicker"    # Lnet/pubnative/player/processor/VASTMediaPicker;

    .prologue
    .line 54
    sget-object v4, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    const-string v5, "validate"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lnet/pubnative/player/processor/VASTModelPostValidator;->validateModel(Lnet/pubnative/player/model/VASTModel;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    sget-object v4, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    const-string v5, "Validator returns: not valid (invalid model)"

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 65
    .local v0, "isValid":Z
    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {p0}, Lnet/pubnative/player/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    invoke-interface {p1, v2}, Lnet/pubnative/player/processor/VASTMediaPicker;->pickVideo(Ljava/util/List;)Lnet/pubnative/player/model/VASTMediaFile;

    move-result-object v1

    .line 70
    .local v1, "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Lnet/pubnative/player/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v3}, Lnet/pubnative/player/model/VASTModel;->setPickedMediaFileURL(Ljava/lang/String;)V

    .line 80
    sget-object v4, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaPicker selected mediaFile with URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v1    # "mediaFile":Lnet/pubnative/player/model/VASTMediaFile;
    .end local v2    # "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-object v5, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Validator returns: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    const-string v4, "valid"

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    sget-object v4, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    const-string v5, "mediaPicker: We don\'t have a compatible media file to play."

    invoke-static {v4, v5}, Lnet/pubnative/player/util/VASTLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_3
    const-string v4, "not valid (no media file)"

    goto :goto_2
.end method

.method private static validateModel(Lnet/pubnative/player/model/VASTModel;)Z
    .locals 5
    .param p0, "model"    # Lnet/pubnative/player/model/VASTModel;

    .prologue
    .line 96
    sget-object v3, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    const-string v4, "validateModel"

    invoke-static {v3, v4}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    .line 100
    .local v1, "isValid":Z
    invoke-virtual {p0}, Lnet/pubnative/player/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "impressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_0
    const/4 v1, 0x0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lnet/pubnative/player/model/VASTModel;->getMediaFiles()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "mediaFiles":Ljava/util/List;, "Ljava/util/List<Lnet/pubnative/player/model/VASTMediaFile;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 112
    :cond_2
    sget-object v3, Lnet/pubnative/player/processor/VASTModelPostValidator;->TAG:Ljava/lang/String;

    const-string v4, "Validator error: mediaFile list invalid"

    invoke-static {v3, v4}, Lnet/pubnative/player/util/VASTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    .line 116
    :cond_3
    return v1
.end method

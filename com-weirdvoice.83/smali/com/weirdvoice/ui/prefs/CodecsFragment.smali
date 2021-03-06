.class public Lcom/weirdvoice/ui/prefs/CodecsFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "CodecsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final BAND_TYPE:Ljava/lang/String; = "band_type"

.field private static final CODEC_ID:Ljava/lang/String; = "codec_id"

.field private static final CODEC_NAME:Ljava/lang/String; = "codec_name"

.field private static final CODEC_PRIORITY:Ljava/lang/String; = "codec_priority"

.field public static final MEDIA_AUDIO:I = 0x0

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final MEDIA_VIDEO:I = 0x1

.field public static final MENU_ITEM_ACTIVATE:I = 0x2

.field private static final NON_FREE_CODECS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final THIS_FILE:Ljava/lang/String; = "CodecsFragment"


# instance fields
.field private bandtype:Ljava/lang/String;

.field private final codecsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private codecsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mediatype:Ljava/lang/Integer;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

.field private useCodecsPerSpeed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->NON_FREE_CODECS:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->useCodecsPerSpeed:Z

    .line 347
    new-instance v0, Lcom/weirdvoice/ui/prefs/CodecsFragment$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment$1;-><init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsComparator:Ljava/util/Comparator;

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/lang/String;S)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecPriority(Ljava/lang/String;S)V

    return-void
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/prefs/CodecsFragment;)Landroid/widget/SimpleAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/util/Map;S)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecActivated(Ljava/util/Map;S)V

    return-void
.end method

.method private initDatas()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 150
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "band_type"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->bandtype:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "media_type"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iput-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mediatype:Ljava/lang/Integer;

    .line 161
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mediatype:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->getCodecList()[Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "codecNames":[Ljava/lang/String;
    :goto_1
    const/16 v4, 0x82

    .line 168
    .local v4, "current_prio":I
    array-length v7, v2

    move v5, v6

    :goto_2
    if-lt v5, v7, :cond_2

    .line 187
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    iget-object v6, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    return-void

    .line 153
    .end local v2    # "codecNames":[Ljava/lang/String;
    .end local v4    # "current_prio":I
    :cond_0
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {v5}, Lcom/weirdvoice/utils/PreferencesWrapper;->getVideoCodecList()[Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "codecNames":[Ljava/lang/String;
    goto :goto_1

    .line 168
    .restart local v4    # "current_prio":I
    :cond_2
    aget-object v1, v2, v5

    .line 169
    .local v1, "codecName":Ljava/lang/String;
    const-string v8, "CodecsFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Fill codec "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->bandtype:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "codecParts":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v0, "codecInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "codec_id"

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v8, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mediatype:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_5

    .line 175
    const-string v8, "codec_name"

    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v10, v3, v6

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v12

    aget-object v11, v3, v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " kHz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_3
    :goto_3
    const-string v8, "codec_priority"

    iget-object v9, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    iget-object v10, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->bandtype:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v1, v10, v11}, Lcom/weirdvoice/utils/PreferencesWrapper;->getCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)S

    move-result v9

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v8, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v4, v4, -0x1

    .line 182
    const-string v8, "CodecsFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found priority is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "codec_priority"

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "codecInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 176
    .restart local v0    # "codecInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v8, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mediatype:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v12, :cond_3

    .line 177
    const-string v8, "codec_name"

    aget-object v9, v3, v6

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method private setCodecActivated(Ljava/util/Map;S)V
    .locals 2
    .param p2, "newPrio"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;S)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "codec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "codec_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecPriority(Ljava/lang/String;S)V

    .line 338
    const-string v0, "codec_priority"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 340
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 341
    return-void
.end method

.method private setCodecPriority(Ljava/lang/String;S)V
    .locals 3
    .param p1, "codecName"    # Ljava/lang/String;
    .param p2, "priority"    # S

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->useCodecsPerSpeed:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    iget-object v1, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->bandtype:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v1, "nb"

    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v1, "wb"

    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->setCodecPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private userActivateCodec(Ljava/util/Map;Z)V
    .locals 9
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "codec":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v6, 0x1

    .line 296
    const-string v5, "codec_id"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "codecName":Ljava/lang/String;
    if-eqz p2, :cond_0

    move v3, v6

    .line 299
    .local v3, "newPrio":S
    :goto_0
    const-string v5, "codec_priority"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-nez v5, :cond_1

    move v1, v6

    .line 300
    .local v1, "isDisabled":Z
    :goto_1
    if-eqz p2, :cond_2

    :goto_2
    if-ne v1, v7, :cond_3

    .line 329
    :goto_3
    return-void

    .end local v1    # "isDisabled":Z
    .end local v3    # "newPrio":S
    :cond_0
    move v3, v7

    .line 297
    goto :goto_0

    .restart local v3    # "newPrio":S
    :cond_1
    move v1, v7

    .line 299
    goto :goto_1

    .restart local v1    # "isDisabled":Z
    :cond_2
    move v7, v6

    .line 300
    goto :goto_2

    .line 305
    :cond_3
    sget-object v5, Lcom/weirdvoice/ui/prefs/CodecsFragment;->NON_FREE_CODECS:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 307
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 308
    .local v2, "message":Landroid/widget/TextView;
    new-instance v4, Landroid/text/SpannableString;

    new-instance v7, Ljava/lang/StringBuilder;

    const v5, 0x7f0c0224

    invoke-virtual {p0, v5}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/weirdvoice/ui/prefs/CodecsFragment;->NON_FREE_CODECS:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 309
    .local v4, "s":Landroid/text/SpannableString;
    invoke-static {v4, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 310
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 312
    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    const v6, 0x7f0c021a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 318
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 319
    const v6, 0x7f0c0218

    new-instance v7, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;

    invoke-direct {v7, p0, p1, v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment$4;-><init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;Ljava/util/Map;S)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 324
    const v6, 0x7f0c01f1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 325
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 327
    .end local v2    # "message":Landroid/widget/TextView;
    .end local v4    # "s":Landroid/text/SpannableString;
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setCodecActivated(Ljava/util/Map;S)V

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    .line 97
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "codecs_per_bandwidth"

    invoke-static {v0, v1}, Lcom/weirdvoice/api/SipConfigManager;->getPreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->useCodecsPerSpeed:Z

    .line 98
    invoke-direct {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->initDatas()V

    .line 99
    invoke-virtual {p0, v7}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setHasOptionsMenu(Z)V

    .line 104
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->codecsList:Ljava/util/List;

    const v3, 0x7f030027

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 105
    const-string v6, "codec_name"

    aput-object v6, v4, v5

    .line 106
    const-string v5, "codec_name"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    .line 107
    const-string v6, "codec_priority"

    aput-object v6, v4, v5

    .line 108
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 111
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 104
    iput-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 114
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    new-instance v1, Lcom/weirdvoice/ui/prefs/CodecsFragment$2;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment$2;-><init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 142
    iget-object v0, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    invoke-virtual {p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    return-void

    .line 108
    :array_0
    .array-data 4
        0x7f0b0080
        0x7f0b003f
        0x7f0b007e
    .end array-data
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, "codecName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v4}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 379
    :goto_1
    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, v0, p2}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->userActivateCodec(Ljava/util/Map;Z)V

    .line 383
    .end local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 373
    .restart local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v4, v2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 374
    .local v3, "tCodec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "codec_name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 375
    move-object v0, v3

    .line 376
    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 272
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    const/4 v0, 0x0

    .line 279
    .local v0, "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    iget v7, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v7}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v0, Ljava/util/HashMap;

    .line 281
    .restart local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    .line 291
    .end local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    :goto_0
    return v3

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v5, "CodecsFragment"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 285
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v0    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 286
    .local v4, "selId":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 287
    const-string v5, "codec_priority"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-nez v5, :cond_2

    move v3, v6

    .line 288
    .local v3, "isDisabled":Z
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/weirdvoice/ui/prefs/CodecsFragment;->userActivateCodec(Ljava/util/Map;Z)V

    move v3, v6

    .line 289
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 250
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-object v5, p0, Lcom/weirdvoice/ui/prefs/CodecsFragment;->mAdapter:Landroid/widget/SimpleAdapter;

    iget v7, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v7}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 257
    .local v1, "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 265
    .end local v1    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/ClassCastException;
    const-string v5, "CodecsFragment"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v2}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    .end local v2    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "codec":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    const-string v5, "codec_priority"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 263
    .local v4, "isDisabled":Z
    :goto_1
    const/4 v7, 0x2

    if-eqz v4, :cond_2

    const v5, 0x7f0c0231

    :goto_2
    invoke-interface {p1, v6, v7, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .end local v4    # "isDisabled":Z
    :cond_1
    move v4, v6

    .line 262
    goto :goto_1

    .line 263
    .restart local v4    # "isDisabled":Z
    :cond_2
    const v5, 0x7f0c0232

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "v":Landroid/view/View;
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/widgets/DragnDropListView;

    .line 195
    .local v0, "listView":Lcom/weirdvoice/widgets/DragnDropListView;
    new-instance v2, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;

    invoke-direct {v2, p0}, Lcom/weirdvoice/ui/prefs/CodecsFragment$3;-><init>(Lcom/weirdvoice/ui/prefs/CodecsFragment;)V

    invoke-virtual {v0, v2}, Lcom/weirdvoice/widgets/DragnDropListView;->setOnDropListener(Lcom/weirdvoice/widgets/DragnDropListView$DropListener;)V

    .line 231
    invoke-virtual {v0, p0}, Lcom/weirdvoice/widgets/DragnDropListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 232
    return-object v1
.end method

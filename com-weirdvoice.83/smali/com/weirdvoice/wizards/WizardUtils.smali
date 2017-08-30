.class public Lcom/weirdvoice/wizards/WizardUtils;
.super Ljava/lang/Object;
.source "WizardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;,
        Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;
    }
.end annotation


# static fields
.field public static final ADVANCED_WIZARD_TAG:Ljava/lang/String; = "ADVANCED"

.field public static final BASIC_WIZARD_TAG:Ljava/lang/String; = "BASIC"

.field public static final EXPERT_WIZARD_TAG:Ljava/lang/String; = "EXPERT"

.field public static final ICON:Ljava/lang/String; = "ICON"

.field public static final ID:Ljava/lang/String; = "ID"

.field public static final LABEL:Ljava/lang/String; = "LABEL"

.field public static final LANG_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final LOCAL_WIZARD_TAG:Ljava/lang/String; = "LOCAL"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRIORITY_INT:Ljava/lang/String; = "PRIORITY_INT"

.field private static WIZARDS_DICT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static initDone:Z

.field private static wizardGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/weirdvoice/wizards/WizardUtils;->initDone:Z

    .line 1249
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWizardBitmap(Landroid/content/Context;Lcom/weirdvoice/api/SipProfile;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "ctxt"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/weirdvoice/api/SipProfile;

    .prologue
    .line 1241
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 1242
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1243
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->wizard:Ljava/lang/String;

    invoke-static {v2}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1244
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p1, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    .line 1246
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    iget-object v2, p1, Lcom/weirdvoice/api/SipProfile;->icon:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static getWizardClass(Ljava/lang/String;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    .locals 1
    .param p0, "wizardId"    # Ljava/lang/String;

    .prologue
    .line 1222
    sget-boolean v0, Lcom/weirdvoice/wizards/WizardUtils;->initDone:Z

    if-nez v0, :cond_0

    .line 1223
    invoke-static {}, Lcom/weirdvoice/wizards/WizardUtils;->initWizards()V

    .line 1225
    :cond_0
    sget-object v0, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    return-object v0
.end method

.method public static getWizardClassInfos(Ljava/lang/Class;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;"
        }
    .end annotation

    .prologue
    .local p0, "wizard":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 1204
    :try_start_0
    const-string v2, "getWizardInfo"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1205
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 1206
    :catch_0
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 1210
    goto :goto_0
.end method

.method public static getWizardIconRes(Ljava/lang/String;)I
    .locals 2
    .param p0, "wizardId"    # Ljava/lang/String;

    .prologue
    .line 1230
    invoke-static {p0}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardClass(Ljava/lang/String;)Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v0

    .line 1231
    .local v0, "wizard_infos":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    if-eqz v0, :cond_0

    .line 1232
    iget-boolean v1, v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    if-nez v1, :cond_0

    .line 1233
    iget v1, v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->icon:I

    .line 1236
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0202c1

    goto :goto_0
.end method

.method public static getWizardsGroupedList()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v4, "locale_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .local v3, "generic_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v9, "world_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v5, "others_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardsList()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 1338
    .local v8, "wizards":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1370
    new-instance v0, Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;-><init>(Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;)V

    .line 1371
    .local v0, "comparator":Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1372
    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1373
    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1374
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 1378
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1381
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 1384
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1387
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_4
    return-object v6

    .line 1338
    .end local v0    # "comparator":Lcom/weirdvoice/wizards/WizardUtils$WizardPrioComparator;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1339
    .local v7, "wizard":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;>;"
    const/4 v2, 0x0

    .line 1341
    .local v2, "found":Z
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-object v12, v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->countries:[Ljava/util/Locale;

    array-length v13, v12

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v13, :cond_7

    .line 1356
    :goto_2
    if-nez v2, :cond_6

    .line 1357
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-boolean v10, v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    if-eqz v10, :cond_a

    .line 1358
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/weirdvoice/wizards/WizardUtils;->wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    const/4 v2, 0x1

    .line 1365
    :cond_6
    :goto_3
    if-nez v2, :cond_0

    .line 1366
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/weirdvoice/wizards/WizardUtils;->wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1341
    :cond_7
    aget-object v1, v12, v10

    .line 1342
    .local v1, "country":Ljava/util/Locale;
    if-eqz v1, :cond_9

    .line 1343
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1344
    const/4 v2, 0x1

    .line 1345
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/weirdvoice/wizards/WizardUtils;->wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1347
    :cond_8
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1348
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1349
    const/4 v2, 0x1

    .line 1350
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/weirdvoice/wizards/WizardUtils;->wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1341
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1360
    .end local v1    # "country":Ljava/util/Locale;
    :cond_a
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-boolean v10, v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->isWorld:Z

    if-eqz v10, :cond_6

    .line 1361
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/weirdvoice/wizards/WizardUtils;->wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method public static getWizardsGroups(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1252
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    .line 1253
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    .line 1327
    :goto_0
    return-object v9

    .line 1255
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sput-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    .line 1256
    const/4 v3, 0x0

    .line 1257
    .local v3, "hasLocal":Z
    const/4 v2, 0x0

    .line 1258
    .local v2, "hasGeneric":Z
    const/4 v5, 0x0

    .line 1259
    .local v5, "hasWorld":Z
    const/4 v4, 0x0

    .line 1261
    .local v4, "hasOther":Z
    invoke-static {}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardsList()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 1262
    .local v8, "wizards":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1302
    :goto_1
    if-eqz v3, :cond_2

    .line 1303
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1304
    .local v6, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "DISPLAY"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    .end local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 1309
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1310
    .restart local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "DISPLAY"

    const v10, 0x7f0c0311

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    .end local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v5, :cond_4

    .line 1316
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1317
    .restart local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "DISPLAY"

    const v10, 0x7f0c0310

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    .end local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 1322
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1323
    .restart local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "DISPLAY"

    const v10, 0x7f0c030f

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    .end local v6    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    sget-object v9, Lcom/weirdvoice/wizards/WizardUtils;->wizardGroups:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1262
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1263
    .local v7, "wizard":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;>;"
    const/4 v1, 0x0

    .line 1265
    .local v1, "found":Z
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-boolean v9, v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->isGeneric:Z

    if-eqz v9, :cond_a

    .line 1266
    const/4 v2, 0x1

    .line 1267
    const/4 v1, 0x1

    .line 1272
    :cond_7
    :goto_2
    if-nez v1, :cond_8

    .line 1273
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-object v11, v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->countries:[Ljava/util/Locale;

    array-length v12, v11

    const/4 v9, 0x0

    :goto_3
    if-lt v9, v12, :cond_b

    .line 1290
    :cond_8
    :goto_4
    if-nez v1, :cond_9

    .line 1291
    const/4 v4, 0x1

    .line 1293
    :cond_9
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 1268
    :cond_a
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    iget-boolean v9, v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->isWorld:Z

    if-eqz v9, :cond_7

    .line 1269
    const/4 v5, 0x1

    .line 1270
    const/4 v1, 0x1

    goto :goto_2

    .line 1273
    :cond_b
    aget-object v0, v11, v9

    .line 1274
    .local v0, "country":Ljava/util/Locale;
    if-eqz v0, :cond_d

    .line 1275
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1276
    const/4 v3, 0x1

    .line 1277
    const/4 v1, 0x1

    .line 1278
    goto :goto_4

    .line 1279
    :cond_c
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1280
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1281
    const/4 v3, 0x1

    .line 1282
    const/4 v1, 0x1

    .line 1283
    goto :goto_4

    .line 1273
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static getWizardsList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    sget-boolean v0, Lcom/weirdvoice/wizards/WizardUtils;->initDone:Z

    if-nez v0, :cond_0

    .line 1215
    invoke-static {}, Lcom/weirdvoice/wizards/WizardUtils;->initWizards()V

    .line 1217
    :cond_0
    sget-object v0, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initWizards()V
    .locals 13

    .prologue
    const v12, 0x7f02032a

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    .line 134
    const-string v0, "BASIC"

    invoke-static {v0}, Lcom/weirdvoice/utils/CustomDistribution;->distributionWantsGeneric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v10, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "BASIC"

    new-instance v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const-string v1, "BASIC"

    const-string v2, "Basic"

    .line 136
    const v3, 0x7f0202ff

    const/16 v4, 0x32

    .line 137
    new-array v5, v7, [Ljava/util/Locale;

    .line 138
    const-class v8, Lcom/weirdvoice/wizards/impl/Basic;

    invoke-direct/range {v0 .. v8}, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 135
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    const-string v0, "ADVANCED"

    invoke-static {v0}, Lcom/weirdvoice/utils/CustomDistribution;->distributionWantsGeneric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v10, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "ADVANCED"

    new-instance v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const-string v1, "ADVANCED"

    const-string v2, "Advanced"

    .line 142
    const v3, 0x7f0202f5

    const/16 v4, 0xa

    .line 143
    new-array v5, v7, [Ljava/util/Locale;

    .line 144
    const-class v8, Lcom/weirdvoice/wizards/impl/Advanced;

    invoke-direct/range {v0 .. v8}, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 141
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    const-string v0, "EXPERT"

    invoke-static {v0}, Lcom/weirdvoice/utils/CustomDistribution;->distributionWantsGeneric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    sget-object v10, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "EXPERT"

    new-instance v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const-string v1, "EXPERT"

    const-string v2, "Expert"

    .line 148
    const/4 v4, 0x5

    .line 149
    new-array v5, v7, [Ljava/util/Locale;

    .line 150
    const-class v8, Lcom/weirdvoice/wizards/impl/Expert;

    move v3, v12

    invoke-direct/range {v0 .. v8}, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 147
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_2
    const-string v0, "LOCAL"

    invoke-static {v0}, Lcom/weirdvoice/utils/CustomDistribution;->distributionWantsGeneric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    sget-object v10, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    const-string v11, "LOCAL"

    new-instance v0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    const-string v1, "LOCAL"

    const-string v2, "Local"

    .line 155
    new-array v5, v7, [Ljava/util/Locale;

    .line 156
    const-class v8, Lcom/weirdvoice/wizards/impl/Local;

    move v3, v12

    move v4, v6

    invoke-direct/range {v0 .. v8}, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/util/Locale;ZZLjava/lang/Class;)V

    .line 153
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->distributionWantsOtherProviders()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1179
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getCustomDistributionWizard()Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;

    move-result-object v9

    .line 1180
    .local v9, "info":Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    if-eqz v9, :cond_4

    .line 1181
    sget-object v0, Lcom/weirdvoice/wizards/WizardUtils;->WIZARDS_DICT:Ljava/util/HashMap;

    iget-object v1, v9, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    :cond_4
    sput-boolean v6, Lcom/weirdvoice/wizards/WizardUtils;->initDone:Z

    .line 1185
    return-void
.end method

.method private static locale(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5
    .param p0, "isoCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "codes":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-object v1

    .line 119
    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_1

    .line 120
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v1, "WizardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid locale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static wizardInfoToMap(Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;Z)Ljava/util/Map;
    .locals 3
    .param p0, "infos"    # Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;
    .param p1, "usePriorityInt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1189
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "LABEL"

    iget-object v2, p0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->label:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string v1, "ID"

    iget-object v2, p0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v1, "ICON"

    iget v2, p0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->icon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v1, "PRIORITY"

    iget v2, p0, Lcom/weirdvoice/wizards/WizardUtils$WizardInfo;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    const-string v1, "PRIORITY_INT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-object v0
.end method

-- MapLua01
-- Author: Bottlep
-- DateCreated: 2/9/2021 10:33:36 PM
--------------------------------------------------------------



function CastText()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };
	--print('8796675')

    local pOverlay = UILens.GetOverlay('MapLabelOverlay_Lakes'); --水域  waterbody
	pOverlay:ClearAll();
    
	local x, y = UI.GridToWorld(103, 43);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(103, 31);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(82, 45);  --鲸海
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(90, 47);  --鲸海
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(95, 57);  --鲸海
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	
	local x, y = UI.GridToWorld(89, 12);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(73, 7);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);
	
	local x, y = UI.GridToWorld(91, 26);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(96, 6);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(85, 18);  --太平洋
    local msg=Locale.Lookup('LOC_MAPLABLE_PACIFC')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(73, 38);  --黄海
    local msg=Locale.Lookup('LOC_MAPLABLE_HUANGHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(69, 33);  --黄海
    local msg=Locale.Lookup('LOC_MAPLABLE_HUANGHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(66, 44);  --渤海
    local msg=Locale.Lookup('LOC_MAPLABLE_BOHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(72, 45);  --西朝鲜湾
    local msg=Locale.Lookup('LOC_MAPLABLE_WESTKOREANBAY')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(80, 46);  --东朝鲜湾
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTKOREANBAY')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(67, 46);  --辽东湾
    local msg=Locale.Lookup('LOC_MAPLABLE_LIAODONGBAY')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(80, 31);  --朝鲜海峡
    local msg=Locale.Lookup('LOC_MAPLABLE_KOREASTRAIT')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	
	local x, y = UI.GridToWorld(79, 24);  --东海
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTSEA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(73, 26);  --东海
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTSEA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(72, 19);  --东海
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTSEA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(64, 4);  --南海
    local msg=Locale.Lookup('LOC_MAPLABLE_SOUTHSEA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(55, 4);  --南海
    local msg=Locale.Lookup('LOC_MAPLABLE_SOUTHSEA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(46, 2);  --北部湾
    local msg=Locale.Lookup('LOC_MAPLABLE_BEIBUGULF')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(88, 33);  --濑户内海
    local msg=Locale.Lookup('LOC_MAPLABLE_SETONAIKAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(98, 64);  --鞑靼海峡
    local msg=Locale.Lookup('LOC_MAPLABLE_TATARSTRAIT')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(103, 63);  --鄂霍次克海
    local msg=Locale.Lookup('LOC_MAPLABLE_OKHOTSK')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(13, 3);  --孟加拉湾
    local msg=Locale.Lookup('LOC_MAPLABLE_BAYOFBENGAL')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(20, 4);  --孟加拉湾
    local msg=Locale.Lookup('LOC_MAPLABLE_BAYOFBENGAL')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	

	local x, y = UI.GridToWorld(92, 35);  --琵琶湖
    local msg=Locale.Lookup('LOC_MAPLABLE_BIWAKO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);




end


function CastText0()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };
	--print('8796675')

    local pOverlay = UILens.GetOverlay('MapLabelOverlay_Lakes'); --水域  waterbody
	--pOverlay:ClearAll();

	
	
	local x, y = UI.GridToWorld(37, 45);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XIUTUZE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(33, 53);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JUYANZE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(25, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MINGZE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	

	


	local x, y = UI.GridToWorld(31, 39);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QINGHAIHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

--	  local x, y = UI.GridToWorld(54, 20);  --
--    local msg=Locale.Lookup('LOC_MAPLABLE_DONGTINGHU')
--    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(36, 12);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DIANCHI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(32, 15);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ERHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(17, 25);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NAMTSO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(4, 31);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_PANGONGTSO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(15, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SILINGTSO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(62, 65);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HULUN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(62, 63);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BUIR')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(2, 53);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ISSYK')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	--local x, y = UI.GridToWorld(61, 20);  --
    --local msg=Locale.Lookup('LOC_MAPLABLE_POYANGHU')
    --pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(19, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LOP')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(2, 61);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BALKHASH')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(66, 13);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TAIWANSTRAIT')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	--local x, y = UI.GridToWorld(66, 25);  --
    --local msg=Locale.Lookup('LOC_MAPLABLE_TAIHU')
    --pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(62, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_CHAOHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(66, 30);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HONGZEHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(27, 42);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HALA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(62, 34);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WEISHANHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);
	

	local x, y = UI.GridToWorld(86, 59);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHANKA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(78, 53);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANCHI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



end



function CastText1()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	--print('8796675')

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_Deserts');--地表 land cover
	pOverlay:ClearAll();

	local x, y = UI.GridToWorld(5, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TAKLAMAKANDESERT')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(11, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TAKLAMAKANDESERT')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(22, 51);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MOHEYANQI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(66, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HORQIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(55, 59);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(48, 59);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(42, 55);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(32, 54);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(37, 51);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(44, 51);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HOUTAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(51, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QIANTAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(42, 43);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XITAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(34, 32);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SONGPAN_MARSH')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	

end




function CastText2()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_MountainRanges');--地形 landform
	pOverlay:ClearAll();

	local x, y = UI.GridToWorld(25, 40);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QAIDAMBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(5, 43);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TARIMBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(15, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TARIMBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(16, 40);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KUMKULEBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(14, 62);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JUNGGARBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(5, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ILIRIVERVALLEY')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(22, 65);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GREATLAKESBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	
	local x, y = UI.GridToWorld(79, 17);  --琉球群岛
    local msg=Locale.Lookup('LOC_MAPLABLE_RYUKYUISLANDS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(68, 11);  --台湾岛
    local msg=Locale.Lookup('LOC_MAPLABLE_TAIWANISLAND')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(69, 0);  --吕宋岛
    local msg=Locale.Lookup('LOC_MAPLABLE_LUZONISLAND')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(77.5, 30);  --济州岛
    local msg=Locale.Lookup('LOC_MAPLABLE_JEJUDO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(50, 3);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HAINANDAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(84, 29);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KYUSHUTOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(88, 31);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHIKOKUTOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(102, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HOKKAIDOUTOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(101, 64);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KUYEDAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(81, 33);  --对马岛
    local msg=Locale.Lookup('LOC_MAPLABLE_TSUSHIMATOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(78, 42);  --朝鲜半岛
    local msg=Locale.Lookup('LOC_MAPLABLE_KOREAPEN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(70, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LIAODONGPEN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(68, 40);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHANDONGPEN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);
	
	local x, y = UI.GridToWorld(58, 34);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_HUABEIPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(61, 42);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_HUABEIPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(69, 51);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_LIAOHEPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(43, 4);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_HONGHEPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(73, 61);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_SONGNENPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	
	local x, y = UI.GridToWorld(55, 25);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_JIANGHANPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(64, 29);  --gewei
	local msg=Locale.Lookup('LOC_MAPLABLE_JIANGHUAIPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(41, 24);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_SICHUANPENDI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(50, 42);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_HUANGTUGAOYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(46, 46);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_SHANGANNING_PENDI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(34, 39);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_HEHUANGGUDI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(4, 5);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DECCAN_PLATEAU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(31, 8);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHAN_PLATEAU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(39, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YUNGUI_PLATEAU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(45, 17);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YUNGUI_PLATEAU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(47, 34);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_GUANZHONGPINGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(98, 36);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KANTO_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(17, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BENGALESE_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(1, 19);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGETIC_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(8, 15);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGETIC_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(22, 54);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TURPANBASIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(13, 31);  --羌塘
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGTANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(91, 33);  --大阪平原
    local msg=Locale.Lookup('LOC_MAPLABLE_OSAKA_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(94, 34);  --浓尾平原
    local msg=Locale.Lookup('LOC_MAPLABLE_NOBI_PLAIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(88, 35);  --中国山地
    local msg=Locale.Lookup('LOC_MAPLABLE_CHUGOKU_HILLS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);




end



function CastText3()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    }

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    }
	--print('8796675')

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_MountainRanges'); --地形 landform  山脉00
	--pOverlay:ClearAll();

	
	local x, y = UI.GridToWorld(36, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QIONGLAISHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(9, 23);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGDISE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(15, 22);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGDISE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(3, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGDISE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	

	local x, y = UI.GridToWorld(1, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KARAKORAM')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(23, 10);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ARAKAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(25, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_PATKAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(1, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_VINDHYA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(1, 7);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SATPURA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(20, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHASI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(33, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_AILAOSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(7, 3);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTERN_GHATS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);
	

	local x, y = UI.GridToWorld(100, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_OUSAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(96, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HIDASAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(90, 62);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SIHOTALIN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(42, 33);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_QINLING')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(71, 59);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_SONGLIAOFENSHUILING')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	

	local x, y = UI.GridToWorld(54, 14);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_NANLING')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(47, 33);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_QINLING')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(50, 32);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_QINLING')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);






end



function CastText33()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    }

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    }
	--print('8796675')

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_MountainRanges'); --地形 landform  山脉00

	
	

	local x, y = UI.GridToWorld(79, 52);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGBAISHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);




	local x, y = UI.GridToWorld(51, 51);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YINSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(44, 52);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YINSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(56, 43);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TAIHANGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



	local x, y = UI.GridToWorld(62, 17);  --武夷山
    local msg=Locale.Lookup('LOC_MAPLABLE_WUYISHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(60, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DABIESHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(52, 43);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LYULIANGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	

	local x, y = UI.GridToWorld(44, 65);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LANGJUXUSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(36, 64);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANRANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(63, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(60, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(48, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DABASHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(43, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MICANGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(30, 19);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HENGDUANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(34, 41);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QILIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(26, 45);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QILIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(22, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(18, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(12, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(7, 54);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(54, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TAIHANGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(19, 36);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KUNLUNSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(12, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KUNLUNSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(5, 37);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KUNLUNSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(15, 41);  -- 阿尔金山
    local msg=Locale.Lookup('LOC_MAPLABLE_ALTYN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(18, 43);  -- 阿尔金山
    local msg=Locale.Lookup('LOC_MAPLABLE_ALTYN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	
	
	local x, y = UI.GridToWorld(21, 19);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HIMALAYA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(18, 18);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HIMALAYA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(10, 19);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HIMALAYA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(5, 22);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HIMALAYA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(64, 58);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GREATKHINGAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(67, 64);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GREATKHINGAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	--local x, y = UI.GridToWorld(96, 35);  --富士山
    --local msg=Locale.Lookup('LOC_MAPLABLE_FUJISAN')
    --pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(19, 64);  --阿尔泰山
    local msg=Locale.Lookup('LOC_MAPLABLE_ALTAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(25, 61);  --阿尔泰山
    local msg=Locale.Lookup('LOC_MAPLABLE_ALTAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(30, 58);  --戈壁阿尔泰山
    local msg=Locale.Lookup('LOC_MAPLABLE_GOBIALTAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(26, 34);  --巴颜喀拉拉山
    local msg=Locale.Lookup('LOC_MAPLABLE_BAYANHAR')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(29, 31);  --巴颜喀拉拉山
    local msg=Locale.Lookup('LOC_MAPLABLE_BAYANHAR')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(16, 33);  --可可西里山
    local msg=Locale.Lookup('LOC_MAPLABLE_HOHXIL')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(24, 28);  --唐古拉山
    local msg=Locale.Lookup('LOC_MAPLABLE_TANGLHA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(24, 24);  --念青唐古拉山
    local msg=Locale.Lookup('LOC_MAPLABLE_NYENCHENTANGLHA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(49, 24);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WUSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(49, 17);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XUEFENGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(42, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HELANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(37, 31);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MINSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(43, 36);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LONGSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(38, 3);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TRUONGSON')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(44, 9);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHIWANDASHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


end



function CastText4()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	--print('8796675')

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_Rivers'); --江河
	--pOverlay:ClearAll();

	

	local x, y = UI.GridToWorld(13, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANGESRIVER')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(20, 15);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BRAHMAPUTRARIVER')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(43, 6);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HONGHE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(55, 10);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZHUJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(50, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZHUJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(25, 6);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_IRRAWADDY')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(86, 65);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HEILONGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(54, 18);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XIANGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(60, 18);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GANJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	

	local x, y = UI.GridToWorld(66, 28);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);
	
	local x, y = UI.GridToWorld(58, 24);  --长江
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(51, 24);  --长江
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(45, 22);  --长江
    local msg=Locale.Lookup('LOC_MAPLABLE_CHANGJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(53, 27);  --汉江
    local msg=Locale.Lookup('LOC_MAPLABLE_HANJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);


	local x, y = UI.GridToWorld(62, 31);  --淮河
    local msg=Locale.Lookup('LOC_MAPLABLE_HUAIHE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(58, 30);  --淮河
    local msg=Locale.Lookup('LOC_MAPLABLE_HUAIHE')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);



end




function CastText5()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	--print('8796675')
	--
    local pOverlay = UILens.GetOverlay('MapLabelOverlay_Seas'); --战略要点--strategic point
	-- local pOverlay = UILens.GetOverlay('MapLabelOverlay_Volcanoes'); --战略要点--strategic point
	--MapLabelOverlay_Oceans

	pOverlay:ClearAll();

	local x, y = UI.GridToWorld(30, 45);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_HEXIZOULANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(34, 43);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_HEXIZOULANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(25, 47);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_HEXIZOULANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(66, 50);  --gewei
    local msg=Locale.Lookup('LOC_MAPLABLE_LIAOXIZOULANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams);

	local x, y = UI.GridToWorld(65, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GUAZHOUDU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);
	
	
	local x, y = UI.GridToWorld(60, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JUYONGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(65, 47);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHANHAIGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(50, 35);  --潼关
    local msg=Locale.Lookup('LOC_MAPLABLE_TONGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(51, 35);  --函谷关
    local msg=Locale.Lookup('LOC_MAPLABLE_HANGUGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(43, 31);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANGPINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	

	local x, y = UI.GridToWorld(48, 26);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QUTANGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(47, 25);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QUTANGXIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(48, 25);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WUXIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(49, 25);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XILINGXIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(43, 33);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DASANGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(44, 36);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XIAOGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(49, 33);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YAOGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(50, 33);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WUGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(54, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANMENGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(54, 35);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HULAOGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(55, 37);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TIANJINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(55, 39);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HUGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(53, 37);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZHIGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(52, 45);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NINGWUGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(58, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZIJINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(42, 51);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JILUSAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	

	


end




function CastText55()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	--print('8796675')

    local pOverlay = UILens.GetOverlay('MapLabelOverlay_Seas'); --战略要点02--strategic point 02
	-- local pOverlay = UILens.GetOverlay('MapLabelOverlay_Volcanoes'); --战略要点--strategic point
	--MapLabelOverlay_Oceans    


	
	
	local x, y = UI.GridToWorld(56, 45);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_PINGXINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(56, 42);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NIANGZIGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(57, 42);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGXINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(53, 40);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DAFENGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(54, 43);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XINKOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(62, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GUBEIKOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(64, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XIFENGKOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(23, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DANGJINSHANKOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(41, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JIANMENGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(45, 8);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZHENNANGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(57, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_DAOMAGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


	local x, y = UI.GridToWorld(22, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YUMENGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(22, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(24, 50);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_XINGXINGXIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(29, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JIAYUGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	



    
end


function CastText555()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	

	local pOverlay = UILens.GetOverlay('MapLabelOverlay_Seas'); --战略要点02--strategic point 03
	-- local pOverlay = UILens.GetOverlay('MapLabelOverlay_Volcanoes'); --战略要点--strategic point
	--MapLabelOverlay_Oceans
	-- MountainRanges

	local x, y = UI.GridToWorld(33, 42);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BIANDUKOU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(58, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MEIGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(56, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHAOGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(53, 13);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YANGSHANGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(64, 18);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_SHANGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(43, 19);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LOUSHANGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);

	local x, y = UI.GridToWorld(56, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_PINGJINGGUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_S);


end



function CastText6()

	local ColorSet_Main = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE");
	}

	local ColorSet_FOW = {
		PrimaryColor   = UI.GetColorValue("COLOR_MAP_LABEL_FILL_FOW");
		SecondaryColor = UI.GetColorValue("COLOR_MAP_LABEL_STROKE_FOW");
	}

    local FontParams = {
        FontSize       = 18.0,
        Leading        = 12.0,
        Kerning        = 5.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_B = {
        FontSize       = 38.0,
        Leading        = 32.0,
        Kerning        = 15.33,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Stroke",
    };

	local FontParams_S = {
        FontSize       = 10.0,
        Leading        = 8.0,
        Kerning        = 2.63,
        WrapMode       = "Wrap",
        TargetWidth    = 128,
        Alignment      = "Center",
        ColorSet       = ColorSet_Main,
        FOWColorSet    = ColorSet_FOW,
        FontStyle      = "Shadow",
    };
	--print('8796675')

    local pOverlay = UILens.GetOverlay('MapLabelOverlay_Oceans'); --地域 region

	pOverlay:ClearAll();

	local x, y = UI.GridToWorld(56, 35);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_ZHONGYUAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(60, 44);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YOUJI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(70, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YINGLIAO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(67, 58);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHINGAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(77, 54);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TUNGUS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(76, 62);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TUNGUS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(82, 60);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TUNGUS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(94, 64);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_TUNGUS')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(54, 42);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BINGDAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(46, 36);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_GUANSHAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(38, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HELONG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(30, 46);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HELONG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(58, 53);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MONAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(49, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MONAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(36, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MONAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(30, 55);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MONAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(59, 62);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MOBEI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(49, 62);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MOBEI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(39, 60);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MOBEI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(28, 60);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MOBEI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(1, 16);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(17, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(7, 12);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDIA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(23, 15);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDOCHINA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(26, 6);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDOCHINA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(33, 6);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_INDOCHINA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);




	local x, y = UI.GridToWorld(64, 39);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_QILU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(78, 39);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KOREA')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(91, 34);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WESTJAPAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(85, 30);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_WESTJAPAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(98, 38);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTJAPAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(101, 48);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_EASTJAPAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(63, 30);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_HUAISI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(55, 26);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGXIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(55, 17);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JINGXIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(54, 11);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LINGNAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(43, 8);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_LINGNAN')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(45, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BASHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(39, 24);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BASHU')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(44, 16);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YUNGUI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(36, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_YUNGUI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(3, 45);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NANJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(10, 47);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NANJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(18, 49);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_NANJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(4, 56);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BEIJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(21, 55);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BEIJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(14, 61);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_BEIJIANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(66, 24);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_JIANGDONG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(65, 14);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_MINHAI')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);



	local x, y = UI.GridToWorld(27, 21);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHAM')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(33, 25);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHAM')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(27, 27);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_KHAM')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);
	

	local x, y = UI.GridToWorld(20, 40);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_AMDO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(33, 33);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_AMDO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	
	local x, y = UI.GridToWorld(27, 39);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_AMDO')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);



	local x, y = UI.GridToWorld(22, 20);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_UTSANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


	local x, y = UI.GridToWorld(16, 29);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_UTSANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(3, 28);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_UTSANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);

	local x, y = UI.GridToWorld(11, 22);  --
    local msg=Locale.Lookup('LOC_MAPLABLE_UTSANG')
    pOverlay:CreateTextAtPos(msg, x, y, FontParams_B);


end

Events.LoadScreenClose.Add( CastText );
Events.LoadScreenClose.Add( CastText0 );
Events.LoadScreenClose.Add( CastText1 );
Events.LoadScreenClose.Add( CastText2 );
Events.LoadScreenClose.Add( CastText3 );
Events.LoadScreenClose.Add( CastText33 );
Events.LoadScreenClose.Add( CastText4 );
Events.LoadScreenClose.Add(CastText5);
Events.LoadScreenClose.Add(CastText55);
Events.LoadScreenClose.Add(CastText555);
Events.LoadScreenClose.Add( CastText6 );





function NEAgetbuildingsatplot()



end
